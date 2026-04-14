
import 'package:flutter_application_1/core/api_serveces/api_constans.dart';
import 'package:flutter_application_1/core/api_serveces/dio_helper.dart';
import 'package:flutter_application_1/features/home/data/models/best_seller_respons.dart';

class SearchRepo {
 static  search({required String text})async{
try{
  
   final response=await DioHelper.dio?.get(ApiConstans.search,
   queryParameters:{
    "name":text
   }
   );
   if(response?.statusCode==200){
   BestSellerResponse data=BestSellerResponse.fromJson(response?.data);
   return data;
   }else{
    return null;
   }

}catch(e){
  return null;
}
}}