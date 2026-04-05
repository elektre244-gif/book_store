class SliderModel {
  final Data data;
  final String message;
  final List<dynamic> error;
  final int status;

  SliderModel({
    required this.data,
    required this.message,
    required this.error,
    required this.status,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      data: Data.fromJson(json['data']),
      message: json['message'] ?? '',
      error: json['error'] ?? [],
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "data": data.toJson(),
      "message": message,
      "error": error,
      "status": status,
    };
  }
}

// =========================

class Data {
  final List<SliderItem> sliders;

  Data({required this.sliders});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      sliders: (json['sliders'] as List)
          .map((e) => SliderItem.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "sliders": sliders.map((e) => e.toJson()).toList(),
    };
  }
}

// =========================

class SliderItem {
  final String image;

  SliderItem({required this.image});

  factory SliderItem.fromJson(Map<String, dynamic> json) {
    return SliderItem(
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "image": image,
    };
  }
}