import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewPasswordRepo {
  static Future<bool> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('token') ?? "";

      final response = await DioHelper.dio!.post(
        ApiConstans.changePassword,
        data: {
     "current_password": oldPassword,
    "new_password": newPassword,
    "new_password_confirmation": newPassword,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      return response.statusCode == 200;
    } catch (e) {
      print("Change Password Error: $e");
      return false;
    }
  }
}