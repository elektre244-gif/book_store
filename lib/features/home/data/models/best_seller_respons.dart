class BestSellerResponse {
  int? status;
  String? message;
  BestSellerData? data;

  BestSellerResponse({this.status, this.message, this.data});

  BestSellerResponse.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] != null
        ? BestSellerData.fromJson(json["data"])
        : null;
  }

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "message": message,
      "data": data?.toJson(),
    };
  }
}



class BestSellerData {
  List<Product>? products;

  BestSellerData({this.products});

  BestSellerData.fromJson(Map<String, dynamic> json) {
    if (json["products"] != null) {
      products = [];
      json["products"].forEach((v) {
        products!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "products": products?.map((e) => e.toJson()).toList(),
    };
  }
}

// =======================

class Product {
  int? id;
  String? name;
  String? description;
  String? price;
  num? discount;
  int? stock;
  num? priceAfterDiscount;
  int? bestSeller;
  String? image;
  String? category;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.discount,
    this.stock,
    this.priceAfterDiscount,
    this.bestSeller,
    this.image,
    this.category,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json["price"];
    discount = json['discount'];
    stock = json['stock'];
    priceAfterDiscount = json['price_after_discount'];
    bestSeller = json['best_seller'];
    image = json['image'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "price": price,
      "discount": discount,
      "stock": stock,
      "price_after_discount": priceAfterDiscount,
      "best_seller": bestSeller,
      "image": image,
      "category": category,
    };
  }
}