part of 'connectivity_bloc.dart';

enum ConnectionType { wifi, mobile }

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    @Default(true) bool internetLoading,
    ConnectionType? connectionType,
    @Default(false) bool isConnected,
  }) = _ConnectivityState;

  factory ConnectivityState.initial() => const ConnectivityState();
}
