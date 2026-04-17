import 'package:circle_bottom_navigation/widgets/tab_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_cached_network_image.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostomCardItem extends StatelessWidget {
  final Product? product;
  final Color? background;
  final Function()? onTap;
  const CostomCardItem({super.key, this.product, this.background, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        height: 281.h,
        width: 163.w,
        decoration: BoxDecoration(
          color: background ?? AppConstans.backGroundCard,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 11.5.h, left: 15.w, right: 11.5.w),
              child: CustomCachedNetworkImage(
                imageUrl: product?.image ?? "",
                height: 175,
                width: 140,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              product?.name ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 23.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "\$${product?.price ?? ""}",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 60.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: AppConstans.salaryContanierColor,
                    ),
                    child: Center(
                      child:  Text(
                            "Buy".tr(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: AppConstans.secondColor,
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
