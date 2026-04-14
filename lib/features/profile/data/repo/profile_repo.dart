import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:flutter_application_1/features/profile/data/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileRepo {
  static Future<ProfileModel?> getData() async {
    try {

final prefs = await SharedPreferences.getInstance();
String token = prefs.getString('token') ?? "";
print("TOKEN >>> $token");
final response = await DioHelper.dio!.get(
  ApiConstans.profile,
  options: Options(
    headers: {
      "Authorization": "Bearer $token",
    },
  ),
);

      if (response.statusCode == 200) {
        final data = ProfileModel.fromJson(response.data['data']);
        return data;
      } else {
        return null;
      }
    } catch (e) {
      print("Profile Error: $e");
      return null;
    }
  }
}
