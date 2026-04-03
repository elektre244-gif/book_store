import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBlocListenerRegister extends StatelessWidget {
    final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmPassword;
  const AuthBlocListenerRegister({super.key, required this.name, required this.email, required this.password, required this.confirmPassword});

  @override
  Widget build(BuildContext context) {
    return   BlocListener<AuthenticationCubit, AuthenticationState>(
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
                        RoutesScreens.bottomNavBar,
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
                    data: "Register",
                    bottmColor: AppConstans.primaryColor,
                    textColor: AppConstans.secondColor,
                    onTap: () {
                      context.read<AuthenticationCubit>().register(
                        email: email.text,
                        password: password.text,
                        name: name.text,
                        passwordConfirmation: confirmPassword.text,
                      );
                    },
                  ),
                );
  }
}