import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mobile_e_wallet/presentation/contact_screen/models/contact_model.dart';
part 'contact_event.dart';
part 'contact_state.dart';

/// A bloc that manages the state of a Contact according to the event that is dispatched to it.
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc(ContactState initialState) : super(initialState) {
    on<ContactInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ContactInitialEvent event,
    Emitter<ContactState> emit,
  ) async {}
}
