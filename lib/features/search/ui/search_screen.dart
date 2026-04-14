import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/search/cubit/cubit/search_cubit.dart';
import 'package:flutter_application_1/features/search/ui/widgets/custom_search_appBar.dart';
import 'package:flutter_application_1/features/search/ui/widgets/custom_search_logic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSearchAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                data: 'Search',
                suffix: Icon(Icons.search, color: Colors.grey.shade500),
                onChanged: (v) {
                  context.read<SearchCubit>().getSearch(v);
                },
              ),
              SizedBox(height: 20.h),
              CustomSearchLogic(),
            ],
          ),
        ),
      ),
    );
  }
}
