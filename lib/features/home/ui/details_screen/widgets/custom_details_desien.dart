import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart' show Product;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsDesien extends StatelessWidget {
  final Product product;
  const CustomDetailsDesien({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // استخدمنا Column عشان نجمع كل العناصر دي
    return Column(
      children: [
        Container(
          height: 280.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: CachedNetworkImage(
            imageUrl: product.image ?? "",
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        SizedBox(height: 20.h),
        Center(
          child: CustomText(
            data: product.name ?? "",
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 25.h),
        CustomText(
          data: product.description ?? "",
          fontSize: 15,
          color: Colors.grey,
        ),
        const Spacer(),
        Row(
          children: [
            CustomText(
              data: "\$ ${product.price ?? ""}",
              fontSize: 25,
              color: Colors.black,
            ),
            const Spacer(),
            Container(
              height: 50.h,
              width: 180.w,
              decoration: BoxDecoration(
                color: AppConstans.blackColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: CustomText(
                  data: "Add To Card", // ملاحظة: اسمها Add to Cart مش Card
                  fontSize: 20,
                  color: AppConstans.secondColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}