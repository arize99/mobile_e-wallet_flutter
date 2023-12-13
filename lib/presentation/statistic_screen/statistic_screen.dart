import 'bloc/statistic_bloc.dart';
import 'models/statistic_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_e_wallet/core/app_export.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<StatisticBloc>(
      create: (context) => StatisticBloc(StatisticState(
        statisticModelObj: StatisticModel(),
      ))
        ..add(StatisticInitialEvent()),
      child: StatisticScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<StatisticBloc, StatisticState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgStatistic,
                height: 812.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
