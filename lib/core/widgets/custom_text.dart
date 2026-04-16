import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String data;
 final double fontSize;
 final Color color;
  const CustomText({super.key, required this.data, required this.fontSize,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Text(
            data,
                style: TextStyle(
                  fontSize: fontSize.sp,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              );
            
  }
}