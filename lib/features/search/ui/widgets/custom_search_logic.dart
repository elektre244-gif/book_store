import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/home/ui/widgets/costom_card_item.dart';
import 'package:flutter_application_1/features/search/cubit/cubit/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomSearchLogic extends StatelessWidget {
  const CustomSearchLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return               BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  if (state is SearchInitial) {
                    return Lottie.asset('assets/lotti/Searching for word.json');
                  } else if (state is SearchLoadingState) {
                    return Center(
                      child: Skeletonizer(
                        enabled: true,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.w,
                                mainAxisSpacing: 10.h,
                                childAspectRatio: 0.62,
                              ),
                          itemBuilder: (context, index) {
                            return CostomCardItem(background: AppConstans.gray);
                          },
                        ),
                      ),
                    );
                  } else if (state is SearchSuccessState) {
                    if (state.products == null || state.products!.isEmpty) {
                      return Lottie.asset(
                        'assets/lotti/Searching for word.json',
                      );
                    }
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.products!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.w,
                        mainAxisSpacing: 10.h,
                        childAspectRatio: 0.62,
                      ),
                      itemBuilder: (context, index) {
                        return CostomCardItem(product: state.products![index]);
                      },
                    );
                  } else if (state is SearchErrorState) {
                    return Center(
                      child: Text("Error"));
                  }
                  return SizedBox();
                },
              );
  }
}