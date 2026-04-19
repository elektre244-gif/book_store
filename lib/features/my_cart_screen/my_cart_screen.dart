import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/features/my_cart_screen/widgets/custom_card_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomText(data: "MyCart", fontSize: 25, color: AppConstans.salaryContanierColor),
            SizedBox(height: 20.h,),
            CustomCardItem()
          ],
        ),
      ),
    );
  }
}