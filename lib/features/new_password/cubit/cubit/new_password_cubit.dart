import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/new_password/data/repo/new_password.dart';
import 'package:meta/meta.dart';

part 'new_password_state.dart';

class NewPasswordCubit extends Cubit<NewPasswordState> {
  NewPasswordCubit() : super(NewPasswordInitial());
 
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    emit(LoadingNewPasswordState());

    final result = await NewPasswordRepo.changePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );

    if (result) {
      emit(SuccussNewPasswordState());
    } else {
      emit(ErrorNewPasswordState());
    }
  }
}

