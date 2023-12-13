// ignore_for_file: must_be_immutable

part of 'contact_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Contact widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ContactEvent extends Equatable {}

/// Event that is dispatched when the Contact widget is first created.
class ContactInitialEvent extends ContactEvent {
  @override
  List<Object?> get props => [];
}
