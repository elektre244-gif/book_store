import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRowToRegister extends StatelessWidget {
  const CustomTextRowToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Don’t have an account? ".tr(),style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        Text(" Register Now".tr(),style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Color(0xffBFA054),
        ),)
      ],
    );
  }
}