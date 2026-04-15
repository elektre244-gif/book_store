import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String data;
final TextEditingController? controller;
final String? Function(String?)? validator;
  const CustomTextField({super.key, required this.data, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller:controller ,
      keyboardType: TextInputType.numberWithOptions(),
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        label:Text(data.tr()),
        filled: true,
        fillColor: Color(0xffE8ECF4),
        labelStyle: TextStyle(
          fontSize: 18.sp,
          color: Color(0xff8391A1)
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          
        ),
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