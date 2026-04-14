import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/update_profile/ui/widgets/custom_edit_profile_appbar.dart';
import 'package:flutter_application_1/features/update_profile/ui/widgets/custom_user_information.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatProfileScreen extends StatelessWidget {
  const UpdatProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
             CustomEditProfileAppbar(),
             SizedBox(height: 60.h,),
             CustomUserInformation()
            ],
          ),
        ),
      ),
    );
  }
}
