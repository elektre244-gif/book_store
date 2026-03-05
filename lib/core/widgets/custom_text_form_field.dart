import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? suffix;
  final   String data;
  final TextEditingController? controller;
  const CustomTextFormField({super.key, this.suffix, required this.data, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      decoration: InputDecoration(
        label:Text(data.tr()),
        filled: true,
        fillColor: Color(0xffE8ECF4),
        labelStyle: TextStyle(
          fontSize: 15.sp,
          color: Color(0xff8391A1)
        ),
        suffix: suffix,
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            width: 0
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            width: 0
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            width: 0
          )
        ),
           
      ),
      
    );
  }
}