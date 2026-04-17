import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/app_routes.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/bottom_navigatin_bar_screens.dart';
import 'package:flutter_application_1/features/home/ui/details_screen/details_screen.dart';
import 'package:flutter_application_1/features/place_your_order/ui/place_your_order_screen.dart';
import 'package:flutter_application_1/features/welcome/ui/welcom-screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Dm"
        ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: AppRoutes().onGenerateRoute,
        home :BottomNavigatinBarScreens()),
    );
  }


  Widget startScreen(){
if(AppConstans.token==null){
  return WelcomScreen();
}else{
  return BottomNavigatinBarScreens();
}
  }
}
