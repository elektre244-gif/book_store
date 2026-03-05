import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomWithLogo extends StatelessWidget {
   final String data;
  final Color bottmColor;
  final  ImageProvider<Object> image;
  final Color textColor;
  final void Function()? onTap;
  const AppBottomWithLogo({super.key, required this.data, required this.bottmColor, required this.image, required this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap ,
      child: Container(
          height: 56.h,
          width: 331.w,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bottmColor,
          ),child:Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                width: 26.w,
                height: 26.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                ),child: Image(image: image),
               ),
               SizedBox(width: 3.w,),
                Text(data.tr(),style: TextStyle(
                  fontSize: 15.sp,
                  color: textColor
                ),),
              ],
            ),
          ),
         ),
    );
  }
}
  