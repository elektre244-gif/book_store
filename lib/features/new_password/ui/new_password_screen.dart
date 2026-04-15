import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/new_password/cubit/cubit/new_password_cubit.dart';
import 'package:flutter_application_1/features/new_password/ui/widgets/custom_creat_new_password.dart';
import 'package:flutter_application_1/features/new_password/ui/widgets/custom_new_password_app_bar.dart';
import 'package:flutter_application_1/features/profile/cubit/cubit/profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final currentController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  void dispose() {
    currentController.dispose();
    newController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: CustomCreatNewPassword(
            currentPassword: currentController,
            newPassword: newController,
            confirmPassword: confirmController,
          ),
        ),
      ),
    );
  }
}
