import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.success_mark.image(),
                SizedBox(height: 30.h),
                CustomText(
                  data: "SUCCESS!",
                  fontSize: 30,
                  color: Colors.black,
                ),
                SizedBox(height: 20.h),
                Text(
                  "Your order will be delivered soon.Thank you for choosing our app!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 25.h),
                AppBottom(
                  data: "Back To Home",
                  bottmColor: AppConstans.primaryColor,
                  textColor: AppConstans.secondColor,
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, RoutesScreens.bottomNavBar,  (Route<dynamic> route) => false,);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
