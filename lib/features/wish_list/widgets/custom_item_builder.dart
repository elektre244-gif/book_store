import 'package:flutter/material.dart' show CircularProgressIndicator;
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_cubit.dart';
import 'package:flutter_application_1/features/wish_list/cubit/cubit/wish_list_state.dart';
import 'package:flutter_application_1/features/wish_list/widgets/custom_product_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomItemBuilder extends StatelessWidget {
  const CustomItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<WishlistCubit, WishlistStates>(
              builder: (context, state) {
                if (state is WishlistLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is WishlistSuccessState) {
                  // الوصول للمنتجات من الـ State
                  final products = state.wishListProducts;
        
                  if (products == null) {
                    return const Center(
                      child: Text("لا توجد منتجات في قائمة الأمنيات"),
                    );
                  }
        
                  return GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // عدد الأعمدة
                          childAspectRatio:
                              0.7, // التحكم في طول الكارت بالنسبة لعرضه
                          crossAxisSpacing: 10, // المسافة الأفقية بين الكروت
                          mainAxisSpacing: 10, // المسافة الرأسية بين الكروت
                        ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return CustomProductItem();
                    },
                  );
                } else if (state is WishlistErrorState) {
                  return Center(child: Text("Error"));
                }
                return const SizedBox();
              },
            );
  }
}