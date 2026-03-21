import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text_row_to_register.dart';
import 'package:flutter_application_1/features/authentication/ui/creat_password_screen_ui/creat_password_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/otp_screen_ui/widgets/custom_contanier_item_otp.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
 const OtpScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: SingleChildScrollView(
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
              Text("OTP Verification".tr(),style: TextStyle(fontSize: 30.sp),),
              SizedBox(height: 10.h,),
              Text("Enter the verification".tr(),style: TextStyle(fontSize: 15.sp),),
              SizedBox(height: 35.h,),
              Row(
                children: [
                  CustomContanierItemOtp(),
                  SizedBox(width: 7.w,),
                  CustomContanierItemOtp( ),
                  SizedBox(width: 7.w,),
                  CustomContanierItemOtp(),
                  SizedBox(width: 7.w,),
                  CustomContanierItemOtp(),
                  SizedBox(width: 7.w,),
                  CustomContanierItemOtp(),
                  SizedBox(width: 7.w,),
                  CustomContanierItemOtp(),
                ],
              ),
              SizedBox(height: 35.h,),
              AppBottom(data:"Verify".tr() , bottmColor:AppConstans.primaryColor, textColor: AppConstans.secondColor,
              onTap: () {
                Navigator.pushNamed(context, RoutesScreens.creatPasswordScreen);
              },),
              SizedBox(height: 350.h,),
              CustomTextRowToRegister(data: "Resend ", data2: "Didn’t received code? " ,)
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}