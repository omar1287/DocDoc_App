// ignore_for_file: camel_case_types

import 'package:docdoc_app/Features/Login/UI/onboarding_screen/Widgets/custom_logo.dart';
import 'package:docdoc_app/Features/Login/UI/onboarding_screen/Widgets/get_start.dart';
import 'package:docdoc_app/Features/Login/UI/onboarding_screen/Widgets/stack_man_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onboardingBody extends StatelessWidget {
  const onboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 30),
        child: Column(
          children: [const customLogo(),
          SizedBox(
            height: 30.h,
          ),
            const StackManAndImage(),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(
              height: 20.h,
            ),
            const GetStart()

          ],
        ),
      ),
    );
  }
}
