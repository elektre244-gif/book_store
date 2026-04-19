import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/home/ui/home_screen/widgets/costom_home_appBar.dart';
import 'package:flutter_application_1/features/home/ui/home_screen/widgets/home_best_book_item.dart';
import 'package:flutter_application_1/features/home/ui/home_screen/widgets/home_slider.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostomHomeAppbar(),
            HomeSlider(),
            SizedBox(height: 31),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Text(
                "Best Seller".tr(),
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15.h),
            HomeBestBookItem(product:Product()),
          ],
        ),
      ),
    );
  }
}
