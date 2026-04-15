import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/update_profile/ui/widgets/custom_updat_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserInformation extends StatefulWidget {

   CustomUserInformation({super.key});

  @override
  State<CustomUserInformation> createState() => _CustomUserInformationState();
}

class _CustomUserInformationState extends State<CustomUserInformation> {
  var nameController =TextEditingController();
  var phoneController =TextEditingController();
  var addressController =TextEditingController();
void dispose() {
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }
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
             CustomTextFormField(data: 'Name',controller: nameController,),
             SizedBox(height: 10.h,),
             CustomTextField(data: 'Phone',controller: phoneController,),
            SizedBox(height: 10.h,),
             CustomTextFormField(data: 'Address',controller: addressController,),
           SizedBox(height: 150.h,),
              CustomUpdatBottom(name: nameController,phone: phoneController, address: addressController,)
               ],
             );
  }
}