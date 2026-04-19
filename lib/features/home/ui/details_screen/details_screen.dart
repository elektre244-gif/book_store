import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_appbar_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/features/home/ui/details_screen/widgets/custom_details_desien.dart';
import 'package:flutter_application_1/features/home/ui/details_screen/widgets/custom_favoriet_icon_bottom.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_application_1/features/wish_list/data/repo/wish_list_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomAppbarIcon(),
                  Spacer(),
                  BlocProvider(
                    create: (context) => WishlistCubit(),
                    child: CustomFavorietIconBottom(product: product),
                  ),
                ],
              ),
              SizedBox(height: 31),

              Center(
                child:CustomDetailsDesien(product: product)),
            ],
          ),
        ),
      ),
    );
  }
}
