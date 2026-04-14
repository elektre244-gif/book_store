import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEditProfileAppbar extends StatelessWidget {
  const CustomEditProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: AppConstans.secondColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        }, icon:Icon(Icons.arrow_back_ios_new_outlined,
                      size: 19,
                      color: Colors.black,
                    )),
                  ),
                  SizedBox(width: 80.w,),
                  Text('Edit Profile',style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              );
  }
}