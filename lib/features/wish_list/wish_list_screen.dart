import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/costom_card_item.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_state.dart';
import 'package:flutter_application_1/features/wish_list/data/repo/wish_list_repo.dart';
import 'package:flutter_application_1/features/wish_list/widgets/custom_item_builder.dart';
import 'package:flutter_application_1/features/wish_list/widgets/custom_product_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WishlistScreen extends StatelessWidget {


  const WishlistScreen({super.key,  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomText(
              data: "WishList",
              fontSize: 25,
              color: AppConstans.blackColor,
            ),
            SizedBox(height: 30.h),
        CustomItemBuilder()
          ],
        ),
      ),
    );
  }
}
