import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/profile/data/models/profile_model.dart';
import 'package:flutter_application_1/features/profile/data/repo/profile_repo.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
                  
getProfileData() async {
emit(LodingStateProfile());
  final response=await ProfileRepo.getData();

if(response!=null){
  emit(SuccessStateProfile(response));
}else{
  emit(ErrorStateProfile());
}

}
}