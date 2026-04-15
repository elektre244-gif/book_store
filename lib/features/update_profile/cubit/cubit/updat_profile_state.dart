part of 'updat_profile_cubit.dart';

@immutable
sealed class UpdatProfileState {}

final class UpdatProfileInitial extends UpdatProfileState {}
final class LodingUpdatProfile  extends UpdatProfileState {}
final class SuccessUpdatProfile extends UpdatProfileState {
   final ProfileModel profile;

  SuccessUpdatProfile(this.profile);
}

final class ErrorUpdatProfile extends UpdatProfileState {}
