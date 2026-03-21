import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepo {
  static Dio dio = Dio();
  static Dio dio1 = Dio();
  static login({required String email, required String password}) async {
    try {
      final response = await dio.post(
        "https://codingarabic.online/api/login",
        data: {"email": email, "password": password},
      );
      if (response.statusCode == 200) {
        savedUserToken(token: response.data["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("===============-===-===-===-=-52");
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
      final registerResponse = await dio1.post(
        "https://codingarabic.online/api/register",
        data: {
          "name": name,
          "email": email,
          "password": password,
          "password_confirmation": passwordConfirmation,
        },
      );
      if (registerResponse.statusCode == 200 ||
          registerResponse.statusCode == 201) {
        savedUserToken(token: registerResponse.data["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("=======================================");
      return false;
    }
  }

  static Future<void> savedUserToken({required String token}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('Token', token);
    print("token is saved");
  }
}
