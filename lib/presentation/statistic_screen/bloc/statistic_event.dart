// ignore_for_file: must_be_immutable

part of 'statistic_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Statistic widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StatisticEvent extends Equatable {}

/// Event that is dispatched when the Statistic widget is first created.
class StatisticInitialEvent extends StatisticEvent {
  @override
  List<Object?> get props => [];
}
