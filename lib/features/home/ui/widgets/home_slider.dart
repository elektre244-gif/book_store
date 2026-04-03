import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 150.0,
          autoPlay: true,
          viewportFraction: 1,
          ),
          items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.amber
              ),
              child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
          }).toList(),
        ),
        SizedBox(height: 10.h,),
        AnimatedSmoothIndicator(    
   activeIndex: 0,    
   count: 6,    
   effect: WormEffect(), 
)   
      ],
    );
  }
}