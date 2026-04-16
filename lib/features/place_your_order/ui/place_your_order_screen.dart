import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/place_your_order/ui/widgets/custom_price_row.dart';
import 'package:flutter_application_1/features/place_your_order/ui/widgets/custom_text_form_for_show_bottom_sheet.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceYourOrderScreen extends StatelessWidget {
  const PlaceYourOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbarIcon(),
              SizedBox(height: 21.h),
              CustomText(
                data: "Place Your Order",
                fontSize: 30,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              CustomText(
                data:
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                fontSize: 15,
                color: Colors.grey.shade500,
              ),
              SizedBox(height: 25.h),
              CustomTextFormField(data: "Full Name"),
              SizedBox(height: 10.h),
              CustomTextFormField(data: "Email"),
              SizedBox(height: 10.h),
              CustomTextFormField(data: "Address"),
                            SizedBox(height: 10.h,),
              CustomTextField(data: "Phone"),
              SizedBox(height: 10.h,),
            CustomTextFormForShowBottomSheet(),
            SizedBox(height: 150.h,),
           CustomPriceRow(),
            SizedBox(height: 10.h,),
            AppBottom(
              bottmColor: AppConstans.primaryColor,
              data: "Submit Order",
              textColor: AppConstans.secondColor,
              onTap: () {
                Navigator.pushNamed(context, RoutesScreens.successScreen);
              },
              )
            ],
          ),
        ),
      ),
    );
  }
}
