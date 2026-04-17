part of 'wish_list_cubit.dart';

@immutable
sealed class WishListState {}

final class WishListInitial extends WishListState {}

class WishlistLoadingState extends WishListState {}

class WishlistSuccessState extends WishListState {}

class WishlistErrorState extends WishListState {}
