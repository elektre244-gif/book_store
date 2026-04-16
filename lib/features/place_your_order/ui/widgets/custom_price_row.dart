import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPriceRow extends StatelessWidget {
  const CustomPriceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                CustomText(data: "Totole:", fontSize: 20, color: Colors.black),
                SizedBox(width: 175.w,),
                CustomText(data: "€ 95.00", fontSize: 20, color: Colors.black)
              ],
            );
  }
}