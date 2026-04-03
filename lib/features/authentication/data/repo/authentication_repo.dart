import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepo {
  static login({required String email, required String password}) async {
    try {
      final response = await DioHelper.dio?.post(
        ApiConstans.login,
        data: {"email": email, "password": password},
      );
      if (response?.statusCode == 200||response?.statusCode==201) {
        savedUserToken(token: response?.data["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static register({
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
      if (registerResponse?.statusCode == 200 ||
          registerResponse?.statusCode == 201) {
        savedUserToken(token: registerResponse?.data["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<void> savedUserToken({required String token}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('Token', token);
    print("token is saved");
  }
}
