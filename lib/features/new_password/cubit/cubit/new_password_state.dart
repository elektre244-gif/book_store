part of 'new_password_cubit.dart';

@immutable
sealed class NewPasswordState {}

final class NewPasswordInitial extends NewPasswordState {}

final class LoadingNewPasswordState extends NewPasswordState {}

final class SuccussNewPasswordState extends NewPasswordState {}

final class ErrorNewPasswordState extends NewPasswordState {}
