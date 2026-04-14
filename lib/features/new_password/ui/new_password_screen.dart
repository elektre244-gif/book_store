import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/new_password/ui/widgets/custom_new_password_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomNewPasswordAppBar(),
            SizedBox(height: 70.h,),
            Center(
              child: Text('New Password',style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
            SizedBox(height: 50.h,),
            CustomTextFormField(data: 'Current Password'),
            SizedBox(height: 10.h,),
            CustomTextFormField(data: "New Password"),
            SizedBox(height: 10.h,),
            CustomTextFormField(data: 'Confirm password'),
            SizedBox(height: 280.h,),
            AppBottom(data: 'Update Password', bottmColor: AppConstans.primaryColor, textColor: AppConstans.secondColor)
          ]),
        ),
      ),
    );
  }
}
