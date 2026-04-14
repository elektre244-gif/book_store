import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/search/data/repo.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  Timer? _debounce;
  SearchCubit() : super(SearchInitial());
  void getSearch(String text) {
    if (_debounce?.isActive ?? false) {
     return _debounce!.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      if (text.trim().isEmpty) {
        emit(SearchSuccessState([]));
        return;
      }

      emit(SearchLoadingState());

      final response = await  SearchRepo.search(text: text);

      if (response != null) {
        emit(SearchSuccessState(response.data?.products ?? []));
      } else {
        emit(SearchErrorState());
      }
    });
  }
}
