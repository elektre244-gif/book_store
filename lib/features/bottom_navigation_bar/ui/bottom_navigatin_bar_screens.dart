import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/home/home_screen.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/my_cart_screen/my_cart_screen.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/profile/profile_screen.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/wish_list/wish_list_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigatinBarScreens extends StatefulWidget {
  const BottomNavigatinBarScreens({super.key});

  @override
  State<BottomNavigatinBarScreens> createState() => _BottomNavigatinBarScreensState();
}

class _BottomNavigatinBarScreensState extends State<BottomNavigatinBarScreens> {
  int activeIndex=0;
  List<Widget>screens=[
    HomeScreen(),
    WishListScreen(),
    MyCartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 0.h),
        child: screens[activeIndex],
      ),
     bottomNavigationBar:  BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: activeIndex,
        onTap:(index){
          setState(() {
            activeIndex=index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        items: [
          
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border,),label: "Books"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "ShopingCart"),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity_outlined),label: "Personal"),
      ]),
      
    );
  }
}