import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/app_bottom_with_logo.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/authentication/ui/widgets/custom_divider.dart';
import 'package:flutter_application_1/features/authentication/ui/widgets/custom_login_appbar.dart';
import 'package:flutter_application_1/features/authentication/ui/widgets/custom_password_text.dart';
import 'package:flutter_application_1/features/authentication/ui/widgets/custom_text_row_to_register.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
    FocusScope.of(context).unfocus();
  },
      child: Scaffold(
        body:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 11.h,horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 39.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomLoginAppbar(),
                  ],
                ),
                SizedBox(height: 29.h,),
                Text( "Welcome back".tr(),style: TextStyle(
                  fontSize: 30.sp,
                  
                ),),
                SizedBox(height: 32.h,),
                CustomTextFormField(data: "enter email".tr()),
                SizedBox(height: 15,),
                CustomTextFormField(data: "enter password".tr(),suffix: IconButton(onPressed: (){}, icon:Icon(Icons.remove_red_eye_outlined,size: 25,)),),
                SizedBox(height: 13.h,),
                CustomPasswordText(),
                SizedBox(height:30.h ,),
                AppBottom(data: "Login".tr(), bottmColor: AppConstans.primaryColor, textColor: AppConstans.secondColor),
               SizedBox(height: 34.h,),
                CustomDivider(),
                SizedBox(height: 21.h,),
                AppBottomWithLogo(data: "Sign in with Google".tr(), bottmColor: Color(0xffFFFFFF), image: AssetImage(Assets.images.google_icon.path), textColor: Color(0xff6A707C)),
                SizedBox(height: 15.h,),
                AppBottomWithLogo(data: "Sign in with Apple".tr(), bottmColor: Color(0xffFFFFFF), image: AssetImage(Assets.images.apple_icon.path), textColor: Color(0xff6A707C)),
                SizedBox(height:80.h,),
                CustomTextRowToRegister()
              ],
            ),
          ),
        ),
      ),
    );
  }
}