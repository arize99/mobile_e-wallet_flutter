import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mobile_e_wallet/presentation/succes_screen/models/succes_model.dart';
part 'succes_event.dart';
part 'succes_state.dart';

/// A bloc that manages the state of a Succes according to the event that is dispatched to it.
class SuccesBloc extends Bloc<SuccesEvent, SuccesState> {
  SuccesBloc(SuccesState initialState) : super(initialState) {
    on<SuccesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuccesInitialEvent event,
    Emitter<SuccesState> emit,
  ) async {}
}
