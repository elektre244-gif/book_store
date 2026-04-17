import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WishlistRepo {
  static Future<bool> addToWishlist(int productId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('token') ?? "";

      final response = await DioHelper.dio!.post(
        ApiConstans.addtowishlist,
        data: {
          "product_id": productId,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      return response.statusCode == 200;
    } catch (e) {
      print("Wishlist Error: $e");
      return false;
    }
  }
}