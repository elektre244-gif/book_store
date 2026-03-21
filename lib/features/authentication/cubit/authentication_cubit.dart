import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/authentication/data/repo/authentication_repo.dart';
import 'package:meta/meta.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

 Future<void> login({required String email,required String password})async{
  emit(AuthenticationLoadingState());
final response=await AuthenticationRepo.login(email:email , password: password);
if(response){
  emit(AuthenticationSuccessesState());
}else{
  emit(AuthenticationErorState());
}

}
}
