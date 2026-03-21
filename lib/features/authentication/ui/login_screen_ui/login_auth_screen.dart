import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/core/widgets/app_bottom_with_logo.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/authentication/ui/login_screen_ui/widgets/custom_divider.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/features/authentication/ui/login_screen_ui/widgets/custom_password_text.dart';
import 'package:flutter_application_1/core/widgets/custom_text_row_to_register.dart';
import 'package:flutter_application_1/features/home_screen/ui/home_screen.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginAuthScreen extends StatefulWidget {
  const LoginAuthScreen({super.key});

  @override
  State<LoginAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [CustomAppbarIcon()],
                ),
                SizedBox(height: 29.h),
                Text("Welcome back".tr(), style: TextStyle(fontSize: 30.sp)),
                SizedBox(height: 32.h),
                CustomTextFormField(data: "enter email".tr()),
                SizedBox(height: 15),
                CustomTextFormField(
                  data: "enter password".tr(),
                  suffix: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined, size: 25),
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                CustomPasswordText(),
                SizedBox(height: 30.h),
                BlocListener<AuthenticationCubit, AuthenticationState>(
                  listener: (context, state) {
                    if (state is AuthenticationLoadingState) {
                      showDialog(
                        context: context,
                        builder: (context) => Center(
                          child: CircularProgressIndicator(
                            color: AppConstans.primaryColor,
                          ),
                        ),
                      );
                    } else if (state is AuthenticationSuccessesState) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RoutesScreens.homeScreen,
                        (route) => false,
                      );
                    } else if (state is AuthenticationErorState) {
                      Navigator.pop(context);
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Error"),
                          content: Text("Error Please try again"),
                        ),
                      );
                    }
                  },
                  child: AppBottom(
                    data: "Login".tr(),
                    bottmColor: AppConstans.primaryColor,
                    textColor: AppConstans.secondColor,
                    onTap: () {
                      context.read<AuthenticationCubit>().login(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    },
                  ),
                ),
                SizedBox(height: 34.h),
                CustomDivider(),
                SizedBox(height: 21.h),
                AppBottomWithLogo(
                  data: "Sign in with Google".tr(),
                  bottmColor: AppConstans.secondColor,
                  image: AssetImage(Assets.images.google_icon.path),
                  textColor: AppConstans.grayColor,
                ),
                SizedBox(height: 15.h),
                AppBottomWithLogo(
                  data: "Sign in with Apple".tr(),
                  bottmColor: AppConstans.secondColor,
                  image: AssetImage(Assets.images.apple_icon.path),
                  textColor: AppConstans.grayColor,
                ),
                SizedBox(height: 80.h),
                CustomTextRowToRegister(
                  data: " Register Now",
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
