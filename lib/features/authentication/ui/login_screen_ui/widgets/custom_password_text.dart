import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/ui/forget_password_screen_ui/forget_password_screen_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordText extends StatelessWidget {
  const CustomPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Forgot Password?".tr(),style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xff6A707C)
          ),),
        ],
      ),
    );
  }
}