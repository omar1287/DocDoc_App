import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customTextForm extends StatelessWidget {
  customTextForm({super.key, required this.hinttext});
String hinttext;
  @override
  Widget build(BuildContext context) {
    var formkey=GlobalKey<FormState>();
    return Form(
      key: formkey,
      child: TextFormField(
        decoration:  InputDecoration(
          hintText: hinttext,
          hintStyle: AppTextStyle.fontsizebold16semi.copyWith(
            color: ColorManager.maingrayform
          ),
          fillColor: ColorManager.moreLightGray,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: ColorManager.mainblue
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,color: ColorManager.maingrayform
            ),
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
    );
  }


}
