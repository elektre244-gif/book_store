import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRowToRegister extends StatelessWidget {
 final String data;
 final String data2;
  const CustomTextRowToRegister({super.key, required this.data, required this.data2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(data2.tr(),style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        Text(data.tr(),style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: AppConstans.primaryColor
        ),)
      ],
    );
  }
}