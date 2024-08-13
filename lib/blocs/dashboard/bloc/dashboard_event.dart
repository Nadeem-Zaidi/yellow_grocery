part of 'dashboard_bloc.dart';

sealed class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

@immutable
class FetchSection extends DashboardEvent {
  int pageNumber = 1;

  FetchSection({required this.pageNumber});
}
