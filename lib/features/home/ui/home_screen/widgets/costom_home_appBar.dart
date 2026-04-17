import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/app_routes.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostomHomeAppbar extends StatelessWidget {
  const CostomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Assets.images.splash1.image(width: 120.w, height: 30.h),
        IconButton(onPressed: () {
          Navigator.pushNamed(context, RoutesScreens.searchScrean);
        }, icon: Icon(Icons.search)),
      ],
    );
  }
}
