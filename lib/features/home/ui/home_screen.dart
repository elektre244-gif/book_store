import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/cubit/cubit/home_slider_cubit.dart';
import 'package:flutter_application_1/features/home/ui/widgets/costom_home_appBar.dart';
import 'package:flutter_application_1/features/home/ui/widgets/home_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
        children: [
          CostomHomeAppbar(),

          HomeSlider()
        ],
      )
    );
  }
}