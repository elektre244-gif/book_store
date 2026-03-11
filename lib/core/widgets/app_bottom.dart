import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottom extends StatelessWidget {
  final String data;
  final Color bottmColor;
  final Color textColor;
  final void Function()? onTap;

  const AppBottom({
    super.key,
    required this.data,
    required this.bottmColor,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 331.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bottmColor,
        ),
        child: Center(
          child: Text(
            data.tr(),
            style: TextStyle(fontSize: 15.sp, color: textColor),
          ),
        ),
      ),
    );
  }
}
