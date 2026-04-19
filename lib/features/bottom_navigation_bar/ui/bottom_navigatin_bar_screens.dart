import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/home/cubit/cubit/home_slider_cubit.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/home/ui/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/my_cart_screen/my_cart_screen.dart';
import 'package:flutter_application_1/features/profile/cubit/cubit/profile_cubit.dart';
import 'package:flutter_application_1/features/profile/ui/profile_screen.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_application_1/features/wish_list/wish_list_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigatinBarScreens extends StatefulWidget {
  final Product? product;
  final token = AppConstans.token;
  BottomNavigatinBarScreens({super.key, this.product});

  @override
  State<BottomNavigatinBarScreens> createState() =>
      _BottomNavigatinBarScreensState();
}

class _BottomNavigatinBarScreensState extends State<BottomNavigatinBarScreens> {
  int activeIndex = 0;
  List<Widget> screens = [
    BlocProvider(
      create: (context) => HomeSliderCubit()
        ..getSlider()
        ..getProduocts(),
      child: HomeScreen(),
    ),
    BlocProvider(
      create: (context) => WishlistCubit()..getproducts(productId: 2, token: AppConstans.token??""),
      child: WishlistScreen(),
    ),
    MyCartScreen(),
    BlocProvider(
      create: (context) => ProfileCubit()..getProfileData(),
      child: ProfileScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h),
        child: screens[activeIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: AppConstans.primaryColor,
        iconSize: 26,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: "Books",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "ShopingCart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined),
            label: "Personal",
          ),
        ],
      ),
    );
  }
}
