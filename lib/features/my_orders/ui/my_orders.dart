import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/my_orders/ui/widgets/custom_my_order_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Column(
            children: [
               CustomMyOrderAppBar()
            ],
          ),
        )),
    );
  }
}