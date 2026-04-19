import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/features/authentication/cubit/authentication_cubit.dart';
import 'package:flutter_application_1/features/home/data/models/slider_model.dart';
import 'package:flutter_application_1/features/wish_list/data/model/wish_list_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WishlistRepository  {
  
static Future<WishlistResponseModel?> getWishListItems({
   String? productId,
  required String token,

}) async { 
  try {

    final response = await DioHelper.dio?.post(ApiConstans.addtowishlist,
    data: {
        // تأكد من الاسم هنا "product_id" مش "id" ولا "product"
        'product_id': productId, 
      },
    options: Options(
    headers: {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    }
    )); 

    if (response?.statusCode == 200) {
     WishlistResponseModel data= await WishlistResponseModel.fromJson(response?.data);
     return data;
    } else {
      return null;
    }
  } catch (error) {
    print("Error in getWishListItems: $error");
    return null;
  } 
}
 
}




