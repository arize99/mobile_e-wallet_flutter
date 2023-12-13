// ignore_for_file: must_be_immutable

part of 'succes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Succes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuccesEvent extends Equatable {}

/// Event that is dispatched when the Succes widget is first created.
class SuccesInitialEvent extends SuccesEvent {
  @override
  List<Object?> get props => [];
}
