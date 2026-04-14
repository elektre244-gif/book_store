part of 'home_slider_cubit.dart';

@immutable
sealed class HomeSliderState {}

final class HomeSliderInitial extends HomeSliderState {}
final class SliderLoadingState extends HomeSliderState {}
final class SliderSuccessState extends HomeSliderState {
  final List<SliderItem> sliders;

  SliderSuccessState({required this.sliders});
}
final class SliderErrrorState extends HomeSliderState {}

final class SuccessBestProductState extends HomeSliderState {
  final List<Product>? product;

  SuccessBestProductState( this.product);

}
final class ErrorBestProductState extends HomeSliderState {}

