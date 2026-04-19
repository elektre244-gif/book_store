class WishlistProductModel {
  final int id;
  final String name;
  final String price;
  final String image;

  WishlistProductModel({required this.id, required this.name, required this.price, required this.image});

  factory WishlistProductModel.fromJson(Map<String, dynamic> json) {
    return WishlistProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toString(),
      image: json['image'] ?? '',
    );
  }
}
class WishlistResponseModel {
  final int status;
  final String message;
  final List<WishlistProductModel> products;
  final int currentPage;
  final int lastPage;

  WishlistResponseModel({
    required this.status,
    required this.message,
    required this.products,
    required this.currentPage,
    required this.lastPage,
  });

  factory WishlistResponseModel.fromJson(Map<String, dynamic> json) {
    // بنجيب الـ Object اللي اسمه data الأول
    var nestedData = json['data'];
    
    // بنحول الـ List اللي جوه الـ data لـ Models
    var list = nestedData['data'] as List;
    List<WishlistProductModel> productList = 
        list.map((i) => WishlistProductModel.fromJson(i)).toList();

    return WishlistResponseModel(
      status: json['status'],
      message: json['message'],
      products: productList,
      currentPage: nestedData['current_page'],
      lastPage: nestedData['last_page'],
    );
  }
}