import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserInformation extends StatelessWidget {
  const CustomUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
               children: [
                   Stack(
            children: [
              CircleAvatar(
                radius: 80,
                child: Icon(Icons.person,size: 120.sp,),
              ),
              Positioned(
                bottom: 5,
                right: 15,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h,),
             CustomTextFormField(data: 'Name'),
             SizedBox(height: 10.h,),
             CustomTextField(data: 'Phone'),
            SizedBox(height: 10.h,),
             CustomTextFormField(data: 'Address'),
           SizedBox(height: 180.h,),
             AppBottom(data: 'Update Profile', bottmColor: AppConstans.primaryColor, textColor: AppConstans.secondColor)

               ],
             );
  }
}