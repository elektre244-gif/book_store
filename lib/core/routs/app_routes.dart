import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/authentication/ui/creat_password_screen_ui/creat_password_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/forget_password_screen_ui/forget_password_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/login_screen_ui/login_auth_screen.dart';
import 'package:flutter_application_1/features/authentication/ui/otp_screen_ui/otp_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/password_success_screen_ui/password_successful_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/register_screen_ui/register_auth_screen.dart'
    as Routes;
import 'package:flutter_application_1/features/authentication/ui/register_screen_ui/register_auth_screen.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/bottom_navigatin_bar_screens.dart';
import 'package:flutter_application_1/features/welcome/ui/welcom-screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/authentication/ui/login_screen_ui/login_auth_screen.dart'
    as Routes;

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesScreens.welcomScreen:
        return MaterialPageRoute(builder: (_) => WelcomScreen());
      case RoutesScreens.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthenticationCubit(),
            child: LoginAuthScreen(),
          ),
        );
      case RoutesScreens.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthenticationCubit(),
            child: RegisterAuthScreen(),
          ),
        );
      case RoutesScreens.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case RoutesScreens.creatPasswordScreen:
        return MaterialPageRoute(builder: (_) => CreatPasswordScreen());
      case RoutesScreens.passwordSuccessScreen:
        return MaterialPageRoute(builder: (_) => PasswordSuccessfulScreen());
      case RoutesScreens.otpScreen:
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case RoutesScreens.bottomNavBar:
        return MaterialPageRoute(builder: (_) => BottomNavigatinBarScreens());
  
      default:
        return null;
    }
  }
}
