import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

class CustomTextFormEnterYourNumber extends StatelessWidget {
  const CustomTextFormEnterYourNumber({super.key});


  @override
  Widget build(BuildContext context) {

    return   SizedBox(
        width: 100,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none
          )

        ));

}}
