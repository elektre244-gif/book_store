import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/profile/data/models/profile_model.dart';
import 'package:flutter_application_1/features/update_profile/data/repo/updat_profile_repo.dart'
    as ProfileRepo;
import 'package:meta/meta.dart';

part 'updat_profile_state.dart';

class UpdatProfileCubit extends Cubit<UpdatProfileState> {
  UpdatProfileCubit() : super(UpdatProfileInitial());
  updateProfile({
    required String name,
    required String phone,
    required String address,
  }) async {
    emit(LodingUpdatProfile());

    final response = await ProfileRepo.updateProfile(
      name: name,
      phone: phone,
      address: address,
    );

    if (response != null) {
      emit(SuccessUpdatProfile(response));
    } else {
      emit(ErrorUpdatProfile());
    }
  }
}
