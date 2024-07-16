part of 'app_bloc.dart';

class AppState extends Equatable {
  final int currentDashboardTabIndex;

  const AppState({
    required this.currentDashboardTabIndex
  });
  factory AppState.initial() {
    return AppState(
        currentDashboardTabIndex: 0
    );
  }

  AppState copyWith({
    bool? appLoading,
    String? splashDataFetchText,
    int? currentDashboardTabIndex
  }) {
    return AppState(
        currentDashboardTabIndex: currentDashboardTabIndex ?? this.currentDashboardTabIndex
    );
  }
  @override
  List<Object?> get props => [
    currentDashboardTabIndex
  ];
}
