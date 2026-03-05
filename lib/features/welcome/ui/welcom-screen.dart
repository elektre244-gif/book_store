import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/features/authentication/ui/authentication_screen.dart';
import 'package:flutter_application_1/features/welcome/ui/widgets/custom_logo_and_icon.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.welcomBackgroung.image().image,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            CustomLogoAndIcon(),
            SizedBox(height: 333.h),
            AppBottom(
              data: "Login".tr(),
              textColor: AppConstans.secondColor,
              bottmColor: AppConstans.primaryColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthenticationScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 15.h),
            AppBottom(
              data: "Register".tr(),
              textColor: AppConstans.blackColor,
              bottmColor: AppConstans.secondColor,
            ),
          ],
        ),
      ),
    );
  }
}
