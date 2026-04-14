import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_cached_network_image.dart';
import 'package:flutter_application_1/features/home/cubit/cubit/home_slider_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
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
      buildWhen: (previous, current) => current is SliderLoadingState||current is SliderSuccessState|| current is SliderErrrorState,
      builder: (context, state) {
        if (state is SliderLoadingState) {
          return Skeletonizer(
            enabled: true,
            child: Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12.r)
              ),
            ),
          );
        } else if (state is SliderSuccessState) {
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
                          
                          child:CustomCachedNetworkImage(imageUrl: i.image??""),
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
        } else {
          return Center(child: Text("Error"));
        }
      },
    );
  }
}
