import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/authentication/ui/password_success_screen_ui/password_successful_screen_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatPasswordScreen extends StatelessWidget {
  const CreatPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppbarIcon()
                  ],
                ),
                SizedBox(height: 28.h,),
                Text("Create new password".tr(),style: TextStyle(fontSize: 30.sp),),
                SizedBox(height: 10.h,),
                Text("Your new password".tr(),style: TextStyle(fontSize: 15.sp,color: AppConstans.grayColor),),
                SizedBox(height: 32.h,),
                CustomTextFormField(data:  "New Password".tr(),suffix: Icon(Icons.remove_red_eye_outlined),),
                SizedBox(height: 10.h,),
                  CustomTextFormField(data:  "Confirm Password".tr(),suffix: Icon(Icons.remove_red_eye_outlined),),
                  SizedBox(height: 38.h,),
                  AppBottom(data:  "Reset Password".tr(), bottmColor: AppConstans.primaryColor, textColor: AppConstans.secondColor,
                  onTap: () {
                    Navigator.pushNamed(context, RoutesScreens.passwordSuccessScreen);
                  },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}