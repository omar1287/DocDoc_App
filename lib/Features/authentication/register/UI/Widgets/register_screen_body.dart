import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_textform.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/rich_text.dart';
import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/widget/customElvatedButton.dart';
import 'package:docdoc_app/core/widget/blue_title_with_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Logic/enter_your_number_cubit/enter _your_number_state.dart';
import '../../Logic/enter_your_number_cubit/enter_your_num_cubit.dart';
import 'alreadyHaveAccountToSignIn.dart';
import 'custom_enter_your_number.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EnterYourNumberCubit(),
      child: BlocConsumer<EnterYourNumberCubit, EnterYourNumberState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 100.h, horizontal: 30.w),
                  child: Column(
                    children: [
                      const BlueTitleWithDescription(
                        title: 'Create Account',
                        description:
                            'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomTextForm(
                        hinttext: 'email',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomTextForm(
                        hinttext: 'password',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomEnterYourNumber(),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomElvatedButton(
                          text: 'Register',
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.fillProfileScreen);
                          }),
                      const SizedBox(
                        height: 40,
                      ),
                      const richText(),
                      const SizedBox(
                        height: 3,
                      ),
                      const AlreadyHaveAccountToSignIn()
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
