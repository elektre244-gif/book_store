import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
 final double height;
 final double width;

  const CustomCachedNetworkImage({super.key, required this.imageUrl, this.height=100, this.width=50});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
  imageUrl:imageUrl,
  height:height ,
  width:width ,
  imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,),
    ),
  ),
  placeholder: (context, url) => Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: AppConstans.gray
    ),
  ),
  errorWidget: (context, url, error) => Icon(Icons.error),
);
  }
}