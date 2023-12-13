import 'bloc/contact_bloc.dart';
import 'models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_e_wallet/core/app_export.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(ContactState(
        contactModelObj: ContactModel(),
      ))
        ..add(ContactInitialEvent()),
      child: ContactScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgContact,
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
