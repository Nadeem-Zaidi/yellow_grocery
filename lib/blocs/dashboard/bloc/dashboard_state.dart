part of 'dashboard_bloc.dart';

class DashBoardState extends Equatable {
  final bool isLoading;
  final List<Map<String, dynamic>> dashBoardContent;
  final String? error;
  final int? currentPage;
  final int? totalPages;

  const DashBoardState(
      {required this.isLoading,
      required this.dashBoardContent,
      this.error,
      this.currentPage = 0,
      this.totalPages});

  DashBoardState copyWith({
    bool? isLoading,
    List<Map<String, dynamic>>? dashBoardContent,
    int currentPage = 0,
    int totalPages = 0,
    String? error,
  }) {
    return DashBoardState(
      isLoading: isLoading ?? this.isLoading,
      dashBoardContent: dashBoardContent ?? this.dashBoardContent,
      currentPage: currentPage,
      totalPages: totalPages,
      error: error ?? this.error,
    );
  }

  factory DashBoardState.initial() => const DashBoardState(
      isLoading: true, dashBoardContent: [], currentPage: 0, totalPages: 0);

  @override
  List<Object?> get props =>
      [isLoading, dashBoardContent, error, currentPage, totalPages];
}
