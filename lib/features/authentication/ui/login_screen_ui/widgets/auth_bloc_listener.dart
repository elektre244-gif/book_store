import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/bottom_navigatin_bar_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBlocListener extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;
  const AuthBlocListener({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationLoadingState) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(color: AppConstans.primaryColor),
            ),
          );
        } else if (state is AuthenticationSuccessesState) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesScreens.bottomNavBar,
            (route)=>false,
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
            email: email.text,
            password: password.text,
          );
        },
      ),
    );
  }
}
