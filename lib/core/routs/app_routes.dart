import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/authentication/ui/creat_password_screen_ui/creat_password_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/forget_password_screen_ui/forget_password_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/login_screen_ui/login_auth_screen.dart';
import 'package:flutter_application_1/features/authentication/ui/otp_screen_ui/otp_screen_ui.dart';
import 'package:flutter_application_1/features/authentication/ui/password_success_screen_ui/password_successful_screen_ui.dart';

import 'package:flutter_application_1/features/authentication/ui/register_screen_ui/register_auth_screen.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/bottom_navigatin_bar_screens.dart';
import 'package:flutter_application_1/features/my_orders/ui/my_orders.dart';
import 'package:flutter_application_1/features/new_password/cubit/cubit/new_password_cubit.dart';
import 'package:flutter_application_1/features/new_password/ui/new_password_screen.dart';
import 'package:flutter_application_1/features/place_your_order/ui/place_your_order_screen.dart';
import 'package:flutter_application_1/features/search/cubit/cubit/search_cubit.dart';
import 'package:flutter_application_1/features/search/ui/search_screen.dart';
import 'package:flutter_application_1/features/success_order_screen/ui/success_order_screen.dart';
import 'package:flutter_application_1/features/update_profile/cubit/cubit/updat_profile_cubit.dart';
import 'package:flutter_application_1/features/update_profile/ui/updat_profile_screen.dart';
import 'package:flutter_application_1/features/welcome/ui/welcom-screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      case RoutesScreens.updatProfile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => UpdatProfileCubit(),
            child: UpdatProfileScreen(),
          ),
        );
      case RoutesScreens.bottomNavBar:
        return MaterialPageRoute(builder: (_) => BottomNavigatinBarScreens());
      case RoutesScreens.placeYourOrder:
        return MaterialPageRoute(builder: (_) => PlaceYourOrderScreen());
      case RoutesScreens.successScreen:
        return MaterialPageRoute(builder: (_) => SuccessOrderScreen());
      case RoutesScreens.myOrders:
        return MaterialPageRoute(builder: (_) => MyOrders());
      case RoutesScreens.newPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NewPasswordCubit(),
            child: NewPasswordScreen(),
          ),
        );
      case RoutesScreens.searchScrean:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchCubit(),
            child: SearchScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
