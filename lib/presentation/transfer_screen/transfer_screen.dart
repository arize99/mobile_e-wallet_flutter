import 'bloc/transfer_bloc.dart';
import 'models/transfer_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_e_wallet/core/app_export.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TransferBloc>(
      create: (context) => TransferBloc(TransferState(
        transferModelObj: TransferModel(),
      ))
        ..add(TransferInitialEvent()),
      child: TransferScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<TransferBloc, TransferState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgTransfer,
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
