import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  Connectivity connectivity;

  late StreamSubscription<ConnectivityResult>? connectivityStreamSubscription;
  ConnectivityBloc({required this.connectivity})
      : super(ConnectivityState.initial()) {
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        add(Wifi());
      } else if (connectivityResult == ConnectivityResult.mobile) {
        add(Mobile());
      } else if (connectivityResult == ConnectivityResult.none) {
        add(Disconnected());
      }
    });
    on<ConnectivityEvent>((event, emit) {
      switch (event) {
        case Wifi():
          _connectedToWifi(emit);

        case Mobile():
          _connectedToMobileInterner(emit);
        case Disconnected():
          _ineternetDisconnected(emit);
      }
    });
  }

  void _connectedToWifi(Emitter<ConnectivityState> emit) async {
    emit(state.copyWith(
        connectionType: ConnectionType.wifi,
        isConnected: true,
        internetLoading: false));
  }

  void _connectedToMobileInterner(Emitter<ConnectivityState> emit) async {
    emit(state.copyWith(
        connectionType: ConnectionType.mobile,
        isConnected: true,
        internetLoading: false));
  }

  void _ineternetDisconnected(Emitter<ConnectivityState> emit) async {
    emit(state.copyWith(
        connectionType: null, isConnected: false, internetLoading: false));
  }

  @override
  Future<void> close() {
    connectivityStreamSubscription?.cancel();
    return super.close();
  }
}
