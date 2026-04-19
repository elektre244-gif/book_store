

import 'package:flutter/widgets.dart' show immutable;
import 'package:flutter_application_1/features/wish_list/data/model/wish_list_model.dart' show WishlistProductModel;

@immutable


abstract class WishlistStates {}

class WishlistInitialState extends WishlistStates {}
class WishlistLoadingState extends WishlistStates {}
class WishlistSuccessState extends WishlistStates {
  final List<WishlistProductModel>? wishListProducts;
  WishlistSuccessState(this.wishListProducts);
}
class WishlistErrorState extends WishlistStates {
}