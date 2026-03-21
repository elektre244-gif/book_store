import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(
          radius: BorderRadius.circular(10.sp),
          color: Color(0xffE8ECF4),
        )),
        Text('Or'.tr(),style: TextStyle(
          fontSize: 14.sp,
          color: Color(0xff6A707C)
        ),),
        Expanded(child: Divider(
          radius: BorderRadius.circular(10.sp),
          color: Color(0xffE8ECF4),
        ))
      ],
    );
  }
}