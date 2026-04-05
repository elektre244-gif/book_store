import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/home/cubit/cubit/home_slider_cubit.dart';
import 'package:flutter_application_1/features/home/data/models/slider_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSliderCubit, HomeSliderState>(
        builder: (context, state) {
          if(state is SliderLoadingState){
            return CircularProgressIndicator();
          }else if(state is SliderSuccessState){
            return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, r) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
              items: state.sliders.map((i) {
                  return ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20.r),
                    child: Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Image.network(i.image),
                        );
                      },
                    ),
                  );
                }).toList(),
            ),
            SizedBox(height: 10.h),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: state.sliders.length,
              effect: ExpandingDotsEffect(
                dotHeight: 7,
                dotWidth: 7,
                activeDotColor: AppConstans.primaryColor,
              ),
            ),
          ],
        );
          }else {
            return Text("Error");
          }
        },
      );
  }
}



 