import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/home/data/models/slider_model.dart';
import 'package:flutter_application_1/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'home_slider_state.dart';

class HomeSliderCubit extends Cubit<HomeSliderState> {
  HomeSliderCubit() : super(HomeSliderInitial());
  Future<void> getSlider() async {
    emit(SliderLoadingState());
    final response = await HomeRepo.getSlider();
    if (response != null) {
      emit(SliderSuccessState(sliders: response.data?.sliders ?? []));
    } else {
      emit(SliderErrrorState());
    }
  }

  Future<void> getProduocts() async {
    emit(SliderLoadingState());
    final productRespons = await HomeRepo.getProdouct();
    if (productRespons != null) {
      emit(SuccessBestProductState(productRespons.data?.products ?? []));
    } else {
      emit(ErrorBestProductState());
    }
  }
}
