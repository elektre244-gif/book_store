import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/wish_list/data/repo/wish_list_repo.dart';
import 'package:meta/meta.dart';

part 'wish_list_state.dart';

class WishListCubit extends Cubit<WishListState> {
  WishListCubit() : super(WishListInitial());

    List<dynamic> wishlist = [];

  Future<void> addToWishlist(int productId) async {
    emit(WishlistLoadingState());

    final result = await WishlistRepo.addToWishlist(productId);

    if (result) {
      wishlist.add(productId); 
      emit(WishlistSuccessState());
    } else {
      emit(WishlistErrorState());
    }
  }
}
