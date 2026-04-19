import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/custom_cached_network_image.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.r),
      decoration: BoxDecoration(
        color: AppConstans.backGroundCard,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCachedNetworkImage(
            height: 180,
            width: 300,
            imageUrl: product?.image.toString() ?? "",
          ),
          Text(
            product?.name.toString() ?? "",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  product?.price.toString() ?? "",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
            ],
          ),
        ],
      ),
    );
  }
}
