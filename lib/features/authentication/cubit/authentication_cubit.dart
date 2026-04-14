import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/data/repo/authentication_repo.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  Future<void> login({required String email, required String password}) async {
    emit(AuthenticationLoadingState());
    final response = await AuthenticationRepo.login(
      email: email,
      password: password,
    );
    if (response != null &&
        response["data"] != null &&
        response["data"]["token"] != null) {
      final token = response["data"]["token"];
      savedUserToken(token: token);
      emit(AuthenticationSuccessesState());
    } else {
      emit(AuthenticationErorState());
    }
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(AuthenticationLoadingState());
    final registerResponse = await AuthenticationRepo.register(
      email: email,
      password: password,
      name: name,
      passwordConfirmation: passwordConfirmation,
    );
    if (registerResponse != null &&
        registerResponse["data"] != null &&
        registerResponse["data"]["token"] != null) {
      final token = registerResponse["data"]["token"];
      savedUserToken(token: token);
      emit(AuthenticationSuccessesState());
    } else {
      emit(AuthenticationErorState());
    }
  }
}

Future<void> savedUserToken({required String token}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setString('token', token);

  print("TOKEN SAVED = $token");
}