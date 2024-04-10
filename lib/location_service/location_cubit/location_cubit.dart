import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  StreamSubscription<ServiceStatus>? _serviceStatusSubscription;
  LocationCubit() : super(LocationState.initial()) {
    _monitorLocationServiceStatus();
  }

  void _monitorLocationServiceStatus() {
    _serviceStatusSubscription = Geolocator.getServiceStatusStream().listen(
      (ServiceStatus status) {
        if (status == ServiceStatus.enabled) {
        } else {}
      },
    );
  }

  Future<bool> isLocationServiceEnabled() async {
    var serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // ignore: unused_result

      return false;
    }
    return true;
  }

  Future<bool> isLocationPermitted() async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(state.copyWith(permission: false));
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  Future<void> getCurrentPosition() async {
    bool locationServiceEnabled = await isLocationServiceEnabled();
    bool permission = await isLocationPermitted();

    if (!locationServiceEnabled) {
      emit(state.copyWith(serviceEnabled: false));
    }
    if (!permission) {
      emit(state.copyWith(permission: false));
    }

    if (locationServiceEnabled && permission) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      var currentPosition =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark placemark = currentPosition[0];
      print(placemark);
      emit(state.copyWith(
        name: placemark.name ?? "",
        street: placemark.street ?? "",
        subLocality: placemark.subLocality ?? "",
        postalCode: placemark.postalCode ?? "",
        locality: placemark.locality ?? "",
        administrativeArea: placemark.administrativeArea ?? "",
        latitude: position.latitude.toString(),
        longitude: position.longitude.toString(),
        serviceEnabled: true,
        permission: true,
      ));
    }
  }
}
