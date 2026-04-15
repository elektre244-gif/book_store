import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/profile/cubit/cubit/profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowUserData extends StatefulWidget {
  const CustomRowUserData({super.key});

  @override
  State<CustomRowUserData> createState() => _CustomRowUserDataState();
}

class _CustomRowUserDataState extends State<CustomRowUserData> {
  @override
  Widget build(BuildContext context) {
  return BlocBuilder<ProfileCubit, ProfileState>(
  builder: (context, state) {
    if (state is LodingStateProfile) {
      return CircularProgressIndicator(
        color: AppConstans.primaryColor,
      );
    } 
    else if (state is SuccessStateProfile) {
      return Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                      child: Icon(Icons.person,size: 40.sp,),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
                state.profile.name,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppConstans.blackColor,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                state.profile.email,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppConstans.gray,
                ),
              ),
            ],
          ),
        ],
      );
    } 
    else {
      return Text(
        'Error',
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  },
);
  }
}
