import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/features/home/cubit/cubit/home_slider_cubit.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({super.key,  this.product});

  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: BlocBuilder<HomeSliderCubit, HomeSliderState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      CustomAppbarIcon(),
                      Spacer(),
                      Icon(Icons.book_outlined),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 271.h,
                    width: 183.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: product?.image ?? "",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  SizedBox(height: 11.h),
                  CustomText(
                    data: product?.name ?? "",
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  SizedBox(height: 20.h),
                  CustomText(
                    textAlign: TextAlign.center,
                    data: product?.description ?? "",
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      CustomText(
                        data: product?.price ?? "",
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      Spacer(),
                      Container(
                        height: 56.h,
                        width: 212.w,
                        decoration: BoxDecoration(
                          color: AppConstans.blackColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: CustomText(
                            data: "Add To Cart",
                            fontSize: 20,
                            color: AppConstans.secondColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
