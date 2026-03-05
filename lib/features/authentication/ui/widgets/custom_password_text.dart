import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordText extends StatelessWidget {
  const CustomPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("Forgot Password?".tr(),style: TextStyle(
          fontSize: 14.sp,
          color: Color(0xff6A707C)
        ),),
      ],
    );
  }
}