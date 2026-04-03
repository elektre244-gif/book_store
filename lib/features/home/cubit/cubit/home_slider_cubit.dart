import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_slider_state.dart';

class HomeSliderCubit extends Cubit<HomeSliderState> {
  HomeSliderCubit() : super(HomeSliderInitial());
}
