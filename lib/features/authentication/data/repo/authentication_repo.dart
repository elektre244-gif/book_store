import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';

class AuthenticationRepo {
  static Future<Map<String, dynamic>?> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await DioHelper.dio?.post(
        ApiConstans.login,
        data: {"email": email, "password": password},
      );

      if (response != null && response.data != null) {
        final Map<String, dynamic> data = Map<String, dynamic>.from(
          response.data,
        );
        return data;
      }

      return null;
    } catch (e) {
      print("ERROR: $e");
      return null;
    }
  }

  static Future<Map<String, dynamic>?> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      final registerResponse = await DioHelper.dio?.post(
        ApiConstans.rigester,
        data: {
          "name": name,
          "email": email,
          "password": password,
          "password_confirmation": passwordConfirmation,
        },
      );
      if (registerResponse != null && registerResponse.data != null) {
        final Map<String, dynamic> data = Map<String, dynamic>.from(
          registerResponse.data,
        );
        return data;
      }

      return null;
    } catch (e) {
      print("ERROR: $e");
      return null;
    }
  }
}
