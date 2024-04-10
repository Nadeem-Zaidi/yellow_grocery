part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  factory LocationState({
    required String name,
    required String street,
    required String subLocality,
    required String postalCode,
    required String locality,
    required String administrativeArea,
    required String latitude,
    required String longitude,
    @Default(false) bool serviceEnabled,
    @Default(false) bool permission,
  }) = _LocationState;

  const LocationState._();

  factory LocationState.initial() => LocationState(
        name: "",
        street: "",
        subLocality: "",
        postalCode: "",
        locality: "",
        administrativeArea: "",
        latitude: "",
        longitude: "",
        serviceEnabled: false,
        permission: false,
      );
}
