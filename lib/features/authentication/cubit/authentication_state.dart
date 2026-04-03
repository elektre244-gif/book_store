part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationSuccessesState extends AuthenticationState {}

final class AuthenticationLoadingState extends AuthenticationState {}

final class AuthenticationErorState extends AuthenticationState {}
