import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/book_store.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  DioHelper.init();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  AppConstans.token=prefs.getString("token");
  runApp(
    
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', 
      fallbackLocale: Locale('en'),
      child:BookStore())
      );  FlutterNativeSplash.remove();
}

