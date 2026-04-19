import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomFavorietIconBottom extends StatelessWidget {
  final Product product;
  const CustomFavorietIconBottom({super.key, required this.product});

  @override
  Widget build(BuildContext context) {

    return  IconButton(
          onPressed: () {
             String token = AppConstans.token??"";

              context.read<WishlistCubit>().getproducts(
      token: token,
      productId: product.id!, // هنا بنجيب الـ id من موديل المنتج اللي معروض
    );
          },
          icon: Icon(
  
            Icons.favorite_border, 
          ),
        );
      }
    }
