import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final Widget? suffix;
  final   String data;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final  String? Function(String?)? validator;
  const CustomTextFormField({super.key, this.suffix, required this.data, this.controller, this.onChanged, this.validator});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged ,
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      controller:widget.controller ,
      decoration: InputDecoration(
        label:Text(widget.data.tr()),
        filled: true,
        fillColor: Color(0xffE8ECF4),
        labelStyle: TextStyle(
          fontSize: 18.sp,
          color: Color(0xff8391A1)
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget.suffix,
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