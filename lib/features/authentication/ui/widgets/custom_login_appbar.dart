import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginAppbar extends StatelessWidget {
  const CustomLoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41.w,
      height: 41.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: BoxBorder.all(width: 0.3)
      ),child: Center(
        child: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
    );
  }
}