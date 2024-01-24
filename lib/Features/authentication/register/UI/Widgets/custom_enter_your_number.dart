import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Logic/enter_your_number_cubit/enter _your_number_state.dart';
import '../../Logic/enter_your_number_cubit/enter_your_num_cubit.dart';
import 'custom_Enter_Text_Field.dart';

class CustomEnterYourNumber extends StatelessWidget {
  const CustomEnterYourNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EnterYourNumberCubit(),
      child: BlocConsumer<EnterYourNumberCubit, EnterYourNumberState>(
        builder: (context, state) {
          var valueCubit = EnterYourNumberCubit.get(context);
          return Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: ColorManager.maingrayform),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  child: DropdownButton<String>(
                    value: valueCubit.dropdownValue,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    items: [
                      DropdownMenuItem<String>(
                        value: "+20",
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            getFlagByValue("+20"),
                          ],
                        ),
                      ),

                      DropdownMenuItem<String>(
                        value: "+1",
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            getFlagByValue("+1"),
                          ],
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: "+21",
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            getFlagByValue("+21"),
                          ],
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: "+40",
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            getFlagByValue("+40"),
                          ],
                        ),
                      )
                    ],
                    onChanged: (newValue) {
                      valueCubit.changeValueOfDropDownMethod(newValue!);
                    },
                    underline: Container(),
                  ),
                ),
                Container(
                  height: 30.h,
                  color: ColorManager.maingrayform,
                  width: 1.w,
                ),
                const CustomTextFormEnterYourNumber()
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  Widget getFlagByValue(String value) {
    switch (value) {
      case '+20':
        return Image.asset('assets/images/us_flag.png',
            width: 24.w, height: 18.h);
      case '+1':
        return Image.asset('assets/images/us_flag.png');
      case '+21':
        return Image.asset('assets/images/us_flag.png');
      case '+40':
        return Image.asset('assets/images/us_flag.png');
      default:
        return Image.asset('assets/images/us_flag.png');
    }
  }
}
