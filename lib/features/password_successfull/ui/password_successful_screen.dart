import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/features/login_auth/ui/login_auth_screen.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordSuccessfulScreen extends StatelessWidget {
  const PasswordSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 285.h,),
              Image.asset(Assets.images.success_mark.path,width: 100.w,height: 100.h,),
              SizedBox(height: 35.h,),
              Text( "Password Changed!".tr(),style: TextStyle(fontSize: 30.sp),),
              SizedBox(height: 3.h,),
              Text( "Your password has been changed successfully.".tr(),style: TextStyle(fontSize: 15.sp),),
              SizedBox(height: 40.h,),
              AppBottom(data:   "Back to Login".tr(), bottmColor: AppConstans.primaryColor, textColor: AppConstans.secondColor,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginAuthScreen()));
              },)
            ],
          ),
        ),
      ),
    );
  }
}