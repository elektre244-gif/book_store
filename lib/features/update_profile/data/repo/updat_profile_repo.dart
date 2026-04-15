import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:flutter_application_1/features/profile/data/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<ProfileModel?> updateProfile({
  required String name,
  required String phone,
  required String address,
}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? "";

    final response = await DioHelper.dio!.post(
      ApiConstans.updateprofile,
      data: {"name": name, "phone": phone, "address": address},
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );

    if (response.statusCode == 200) {
      return ProfileModel.fromJson(response.data['data']);
    }

    return null;
  } catch (e) {
    print("Update Error: $e");
    return null;
  }
}
