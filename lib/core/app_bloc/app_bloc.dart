import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<ChangeDashboardTabIndex>(_onChangeDashboardTabIndex);
  }


  Future<void> _onChangeDashboardTabIndex(
      ChangeDashboardTabIndex event,
      emit,
      ) async {
    print('Changing dashboard tab index to: ${event.index}');
    emit(state.copyWith(currentDashboardTabIndex: event.index));
  }
}
