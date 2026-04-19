import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_state.dart';
import 'package:flutter_application_1/features/wish_list/data/model/wish_list_model.dart';
import 'package:flutter_application_1/features/wish_list/data/repo/wish_list_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class WishlistCubit extends Cubit<WishlistStates> {

  WishlistCubit() : super(WishlistInitialState());
 getproducts({required int productId,required String token})async{
  emit(WishlistLoadingState());
  final response = await WishlistRepository.getWishListItems( token: token);
    if (response != null) {
      
      emit(WishlistSuccessState(response.products));
    } else {
      emit(WishlistErrorState());
    }
 }
}