import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormForShowBottomSheet extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();
   CustomTextFormForShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       controller: cityController,
      decoration: InputDecoration(
        label: Text("Governorate"),
        filled: true,
        fillColor: Color(0xffE8ECF4),
        labelStyle: TextStyle(fontSize: 18.sp, color: Color(0xff8391A1)),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.keyboard_arrow_down_sharp),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),

          borderSide: BorderSide(width: 0),
        ),
      ),
      readOnly: true, // 👈 يمنع الكيبورد
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(20),
              height: 800,
              child: Column(
                children: [
                  CustomText(
                    data: "Select Governoarate",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Cairo"),
                    onTap: () {
                      cityController.text = "Cairo";
                      Navigator.pop(context);
                    },
                  ),
                  Divider(),

                  ListTile(
                    title: Text("Giza"),
                    onTap: () {
                      cityController.text = "Giza";
                      Navigator.pop(context);
                    },
                  ),
                  Divider(),

                  ListTile(
                    title: Text("Tanta"),
                    onTap: () {
                      cityController.text = "Tanta";
                      Navigator.pop(context);
                    },
                  ),
                  Divider(),

                  ListTile(
                    title: Text("Alexandria"),
                    onTap: () {
                      cityController.text = "Alexandria";
                      Navigator.pop(context);
                    },
                  ),
                  Divider(),

                  ListTile(
                    title: Text("Mansoura"),
                    onTap: () {
                      cityController.text = "Mansoura";
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
