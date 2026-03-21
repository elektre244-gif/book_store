import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_row_to_register.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterAuthScreen extends StatelessWidget {
  const RegisterAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [CustomAppbarIcon()],
                ),
                SizedBox(height: 28.h),
                Text("Hello! Register".tr(), style: TextStyle(fontSize: 30.sp)),
                SizedBox(height: 32.h),
                CustomTextFormField(data: "Username".tr()),
                SizedBox(height: 11.h),
                CustomTextFormField(data: "Email".tr()),
                SizedBox(height: 11.h),
                CustomTextFormField(
                  data: "Password".tr(),
                  suffix: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined, size: 25),
                    ),
                  ),
                ),
                SizedBox(height: 11.h),
                CustomTextFormField(
                  data: "Confirm password".tr(),
                  suffix: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined, size: 25),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                AppBottom(
                  data: "Register",
                  bottmColor: AppConstans.primaryColor,
                  textColor: AppConstans.secondColor,
                ),
                SizedBox(height: 190.h),
                CustomTextRowToRegister(data: "Login Now", data2: "Don’t have an account? ",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
