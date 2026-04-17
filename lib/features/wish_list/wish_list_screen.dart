import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/costom_card_item.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomText(data: "Wishlist", fontSize: 20, color: Colors.black),
              SizedBox(height: 30.h),
              BlocBuilder<WishListCubit, WishListState>(
                builder: (context, state) {
                  final wishlist = context.watch<WishListCubit>().wishlist;

                  if (state is WishlistLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state is WishlistErrorState) {
                    return Center(
                      child: CustomText(
                        data: "Error in your NetWork",
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    );
                  }

                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: wishlist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 0.62,
                    ),
                    itemBuilder: (context, index) {
                      return CostomCardItem(background: AppConstans.gray);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
