import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLogoAndIcon extends StatelessWidget {
  const CustomLogoAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (context.locale.languageCode == ("en")) {
                      context.setLocale(Locale("ar"));
                    } else {
                      context.setLocale(Locale("en"));
                    }
                  },
                  icon: Icon(Icons.language),
                ),
              ],
            ),
            SizedBox(height: 95.h),
            Assets.images.splash1.image(),
            SizedBox(height: 20.h),
            Text(
              "order now".tr(),
              style: TextStyle(fontSize: 20.sp),
            ),
      ],
    );
  }
}