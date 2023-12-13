import 'bloc/succes_bloc.dart';
import 'models/succes_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_e_wallet/core/app_export.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccesBloc>(
      create: (context) => SuccesBloc(SuccesState(
        succesModelObj: SuccesModel(),
      ))
        ..add(SuccesInitialEvent()),
      child: SuccesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SuccesBloc, SuccesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgSuccess,
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
