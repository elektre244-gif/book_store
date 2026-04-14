import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomProfilAppBar extends StatelessWidget {
  const CustomProfilAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text("Profile",style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppConstans.blackColor,
                  ),),
                ),
                IconButton( onPressed: () async{
                  final prefs = await SharedPreferences.getInstance();
                   await prefs.remove('token');
                   Navigator.pushNamedAndRemoveUntil(context, RoutesScreens.loginScreen,  (route) => false,);
                 }, icon: Icon(Icons.logout_sharp,size: 20,) ,)
              ],
            );
  }
}