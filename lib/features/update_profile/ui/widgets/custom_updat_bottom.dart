import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/them/app_constans.dart';
import 'package:flutter_application_1/core/widgets/app_bottom.dart';
import 'package:flutter_application_1/features/profile/cubit/cubit/profile_cubit.dart';
import 'package:flutter_application_1/features/update_profile/cubit/cubit/updat_profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomUpdatBottom extends StatelessWidget {
  final TextEditingController name;
  final TextEditingController phone;
  final TextEditingController address;

  CustomUpdatBottom({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdatProfileCubit, UpdatProfileState>(
      listener: (context, state) {
        if (state is SuccessStateProfile) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Profile Updated Successfully")),
          );
        }
      },
      builder: (context, state) {
        if (state is LodingStateProfile) {
          return CircularProgressIndicator();
        }

        return AppBottom(
          onTap: () {
            context.read<UpdatProfileCubit>().updateProfile(
              name: name.text,
              phone: phone.text,
              address: address.text,
            );
            if (state is SuccessUpdatProfile) {
              Navigator.pop(context, true);
            }
          },
          data: 'Update Profile',
          bottmColor: AppConstans.primaryColor,
          textColor: AppConstans.secondColor,
        );
      },
    );
  }
}
