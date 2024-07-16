part of 'app_bloc.dart';

@immutable
sealed class AppEvent {}

class ChangeDashboardTabIndex extends AppEvent {
  final int index;
  ChangeDashboardTabIndex(this.index);
}
