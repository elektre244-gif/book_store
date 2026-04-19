import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardItem extends StatelessWidget {

  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),child: Image.network( "https://codingarabic.online/storage/product/jX84BKBWouZ29YQYA9bCSF2cEXvThCTOkInlU8KP.jpg",fit: BoxFit.fill,),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(data: "Essential Math ", fontSize: 20, color: AppConstans.blackColor),
            SizedBox(height: 5.h,),
            CustomText(data: "\$${222}", fontSize: 15, color: Colors.grey),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: AppConstans.gray,
                    borderRadius: BorderRadius.circular(12),
                  ),child: Icon(Icons.add ,size: 20,),
                ),
                SizedBox(width: 5.w,),
                Text("${1}"),
                SizedBox(width: 5.w,),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: AppConstans.gray,
                    borderRadius: BorderRadius.circular(12),
                  ),child: Icon(Icons.minimize ,size: 20,),
                )
              ],
            )
          ],
        ),
        Spacer(),
        IconButton(onPressed: (){}, icon:Icon(Icons.cancel) )
      ],
    );
  }
}