import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';
import 'package:flutter_application_1/features/home/data/models/slider_model.dart';

class HomeRepo{

 static Future<SliderModel?>? getSlider()async{
  try{
   final response=await DioHelper.dio?.get(ApiConstans.slider);
   if (response?.statusCode==200){
  SliderModel data=SliderModel.fromJson(response?.data);
  return data;
   }else{
 return null;
   }
  }catch(error){
 return null;
  }
  }



  static Future<BestSellerResponse?>? getProdouct()async{
    try{
     final bestSellerProductsResponse=await DioHelper.dio?.get(ApiConstans.productsBestSeller);
     if(bestSellerProductsResponse?.statusCode==200||bestSellerProductsResponse?.statusCode==201){
        BestSellerResponse data=BestSellerResponse.fromJson(bestSellerProductsResponse?.data);
        return data;
     }else{
      return null;
     }

    }catch(e){
      return null;
    }
  }
}