import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String data;
 final double fontSize;
 final Color color;
 final TextAlign? textAlign;
  const CustomText({super.key, required this.data, required this.fontSize,required this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return  Text(
            textAlign: textAlign,
            data,
                style: TextStyle(
                  fontSize: fontSize.sp,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              );
            
  }
}