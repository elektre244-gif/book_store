part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}
final class LodingStateProfile extends ProfileState {}
final class SuccessStateProfile extends ProfileState {
   final ProfileModel profile;

  SuccessStateProfile(this.profile);
}
final class ErrorStateProfile extends ProfileState {}
