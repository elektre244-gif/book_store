import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_row_to_register.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/authentication/ui/register_screen_ui/widgets/auth_bloc_listener_register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterAuthScreen extends StatefulWidget {
  const RegisterAuthScreen({super.key});

  @override
  State<RegisterAuthScreen> createState() => _RegisterAuthScreenState();
}

class _RegisterAuthScreenState extends State<RegisterAuthScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [CustomAppbarIcon()],
                ),
                SizedBox(height: 28.h),
                Text("Hello! Register".tr(), style: TextStyle(fontSize: 30.sp)),
                SizedBox(height: 32.h),
                CustomTextFormField(
                  controller: nameController,
                  data: "Username".tr()),
                SizedBox(height: 11.h),
                CustomTextFormField(
                  controller: emailController,
                  data: "Email".tr()),
                SizedBox(height: 11.h),
                CustomTextFormField(
                  controller: passwordController,
                  data: "Password".tr(),
                  suffix: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined, size: 25),
                    ),
                  ),
                ),
                SizedBox(height: 11.h),
                CustomTextFormField(
                  controller: confirmPasswordController,
                  data: "Confirm password".tr(),
                  suffix: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined, size: 25),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),

              AuthBlocListenerRegister(
                name: nameController, 
                email: emailController, 
                password: passwordController, 
                confirmPassword: confirmPasswordController),
                SizedBox(height: 190.h),
                CustomTextRowToRegister(
                  data: "Login Now",
                  data2: "Don’t have an account? ",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
