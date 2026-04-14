import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContanier extends StatelessWidget {
  final Function()? onTap;
  final String data;
  const CustomContanier({super.key, this.onTap, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54.h,
        width: double.infinity,
        decoration:BoxDecoration(
          color:AppConstans.secondColor,
         boxShadow: [BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 6)
         )]
        ) ,child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            children: [
              Expanded(
                child: Text(data,style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff606060),
                ),),
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }
}