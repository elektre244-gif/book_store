import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/new_password/cubit/cubit/new_password_cubit.dart';
import 'package:flutter_application_1/features/new_password/ui/widgets/custom_new_password_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCreatNewPassword extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final  TextEditingController currentPassword;
  final  TextEditingController newPassword;
  final  TextEditingController confirmPassword;
   CustomCreatNewPassword({super.key, required this.currentPassword, required this.newPassword, required this.confirmPassword});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewPasswordCubit, NewPasswordState>(
            listener: (context, state) {
              if (state is SuccussNewPasswordState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Password Updated Successfully"),
                  ),
                );

                Navigator.pop(context);
              }

              if (state is ErrorNewPasswordState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Something went wrong"),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomNewPasswordAppBar(),

                    SizedBox(height: 70.h),

                    Center(
                      child: Text(
                        'New Password',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    SizedBox(height: 50.h),

                    /// Current Password
                    CustomTextFormField(
                      data: 'Current Password',
                      controller:currentPassword ,
                    ),

                    SizedBox(height: 10.h),

                    /// New Password
                    CustomTextFormField(
                      data: "New Password",
                      controller:newPassword ,
                    ),

                    SizedBox(height: 10.h),

                    /// Confirm Password
                    CustomTextFormField(
                      data: 'Confirm password',
                      controller: confirmPassword,
                    ),

                    SizedBox(height: 280.h),

                    /// Button
                    AppBottom(
                      data: state is LoadingNewPasswordState
                          ? 'Loading...'
                          : 'Update Password',
                      bottmColor: AppConstans.primaryColor,
                      textColor: AppConstans.secondColor,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (newPassword.text !=
                              confirmPassword.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Passwords do not match"),
                              ),
                            );
                            return;
                          }

                          context.read<NewPasswordCubit>().changePassword(
                                oldPassword: currentPassword.text,
                                newPassword: newPassword.text,
                              );
                        }
                      },
                    ),
                  ],
                ),
              );
            },
          );
    
  }
}
