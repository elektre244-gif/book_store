import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContanierItemOtp extends StatelessWidget {

  const CustomContanierItemOtp({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 48.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: BoxBorder.all(
          color: AppConstans.primaryColor,
          width:2 
        )
      ),child: TextFormField(
      
      style: TextStyle(fontSize: 22.sp),
      maxLength: 1,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        keyboardType: TextInputType.numberWithOptions(),
        decoration: InputDecoration(
              counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide(
              width: 0,
              color: AppConstans.secondColor
            )
            ),
          focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide(
              width: 0,
              color: AppConstans.secondColor
          )),
          errorBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide(
              width: 0,
              color: AppConstans.secondColor
          ),
        ),
        
      ) ,inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      
    ));
  }
}