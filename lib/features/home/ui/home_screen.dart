import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/home/widgets/costom_home_appBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CostomHomeAppbar(),
          HomeScreen()
        ],
      ),
    );
  }
}