part of 'home_slider_cubit.dart';

@immutable
sealed class HomeSliderState {}

final class HomeSliderInitial extends HomeSliderState {}
final class SliderLoadingState extends HomeSliderState {}
final class SliderSuccessState extends HomeSliderState {}
final class SliderErrrorState extends HomeSliderState {}
