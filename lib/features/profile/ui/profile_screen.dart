import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/app_routes.dart';
import 'package:flutter_application_1/core/routs/routes_screens.dart';
import 'package:flutter_application_1/features/profile/cubit/cubit/profile_cubit.dart';
import 'package:flutter_application_1/features/profile/ui/widgets/custom_contanier.dart';
import 'package:flutter_application_1/features/profile/ui/widgets/custom_profil_app_bar.dart';
import 'package:flutter_application_1/features/profile/ui/widgets/custom_row_user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            CustomProfilAppBar(),
            SizedBox(height: 30.h),
            CustomRowUserData(),
            SizedBox(height: 30.h),
            CustomContanier(
              data: "My Orders",
              onTap: () {
                Navigator.pushNamed(context, RoutesScreens.myOrders);
              },
            ),
            SizedBox(height: 10.h),
            CustomContanier(
              data: "Edit Profile",
              onTap: () async {
                final result = await Navigator.pushNamed(
                  context,
                  RoutesScreens.updatProfile,
                );

                if (result == true) {
                  context.read<ProfileCubit>().getProfileData();
                }
              },
            ),
            SizedBox(height: 10.h),
            CustomContanier(
              data: "Reset Password",
              onTap: () {
                Navigator.pushNamed(context, RoutesScreens.newPassword);
              },
            ),
            SizedBox(height: 10.h),
            CustomContanier(data: "FAQ"),
            SizedBox(height: 10.h),
            CustomContanier(data: "Contact Us"),
            SizedBox(height: 10.h),
            CustomContanier(data: "Privacy & Terms"),
          ],
        ),
      ),
    );
  }
}
