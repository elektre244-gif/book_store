import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/home/cubit/cubit/home_slider_cubit.dart';
import 'package:flutter_application_1/core/widgets/costom_card_item.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeBestBookItem extends StatelessWidget {
  const HomeBestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSliderCubit, HomeSliderState>(
      buildWhen: (previous, current) =>
          current is SliderLoadingState ||
          current is SuccessBestProductState ||
          current is ErrorBestProductState,
      builder: (context, state) {
        
        if (state is SliderLoadingState) {
          return Center(
            child: Skeletonizer(
              enabled: true,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 0.62,
                ),
                itemBuilder: (context, index) {
                  return CostomCardItem(
                    background: AppConstans.gray,
                  );
                },
              ),
            ),
          );
        } 
        
     else if (state is SuccessBestProductState) {
  final products = state.product ?? [];

  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: products.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10.w,
      mainAxisSpacing: 10.h,
      childAspectRatio: 0.62,
    ),
    itemBuilder: (context, index) {
      final product = products[index];

      return CostomCardItem(
        product: product,
        onTap: () {
          Navigator.pushNamed(
            context,
            RoutesScreens.detailes,
            arguments: product,
          );
        },
      );
    },
  );
}
        
        else if (state is ErrorBestProductState) {
          return Center(child: Text("Error"));
        }

        return const SizedBox();
      },
    );
  }
}