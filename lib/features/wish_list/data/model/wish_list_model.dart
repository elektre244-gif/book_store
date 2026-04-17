class WishlistModel {
  final WishlistData data;
  final String message;
  final int status;

  WishlistModel({
    required this.data,
    required this.message,
    required this.status,
  });

  factory WishlistModel.fromJson(Map<String, dynamic> json) {
    return WishlistModel(
      data: WishlistData.fromJson(json['data']),
      message: json['message'],
      status: json['status'],
    );
  }
}
class WishlistData {
  final int currentPage;
  final List<dynamic> items;
  final int total;

  WishlistData({
    required this.currentPage,
    required this.items,
    required this.total,
  });

  factory WishlistData.fromJson(Map<String, dynamic> json) {
    return WishlistData(
      currentPage: json['current_page'],
      items: json['data'], // 👈 المنتجات هنا
      total: json['total'],
    );
  }
}