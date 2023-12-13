import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mobile_e_wallet/presentation/statistic_screen/models/statistic_model.dart';
part 'statistic_event.dart';
part 'statistic_state.dart';

/// A bloc that manages the state of a Statistic according to the event that is dispatched to it.
class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  StatisticBloc(StatisticState initialState) : super(initialState) {
    on<StatisticInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StatisticInitialEvent event,
    Emitter<StatisticState> emit,
  ) async {}
}
