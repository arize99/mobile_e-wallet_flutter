// ignore_for_file: must_be_immutable

part of 'statistic_bloc.dart';

/// Represents the state of Statistic in the application.
class StatisticState extends Equatable {
  StatisticState({this.statisticModelObj});

  StatisticModel? statisticModelObj;

  @override
  List<Object?> get props => [
        statisticModelObj,
      ];
  StatisticState copyWith({StatisticModel? statisticModelObj}) {
    return StatisticState(
      statisticModelObj: statisticModelObj ?? this.statisticModelObj,
    );
  }
}
