part of 'connectivity_bloc.dart';

sealed class ConnectivityEvent extends Equatable {
  const ConnectivityEvent();

  @override
  List<Object> get props => [];
}

class Wifi extends ConnectivityEvent {}

class Mobile extends ConnectivityEvent {}

class Disconnected extends ConnectivityEvent {}
