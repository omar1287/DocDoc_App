import 'package:docdoc_app/Features/Register/Logic/enter_your_number_cubit/enter%20_your_number_state.dart';
import 'package:docdoc_app/Features/Register/Logic/enter_your_number_cubit/enter_your_num_cubit.dart';
import 'package:docdoc_app/Features/Register/UI/Widgets/custom_Enter_Text_Field.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEnterYourNumber extends StatelessWidget {
  const CustomEnterYourNumber({super.key});

  @override
  Widget build(BuildContext context) {
    var valueCubit = EnterYourNumberCubit.get(context);
    return BlocProvider(
      create: (context) => EnterYourNumberCubit(),
      child: BlocConsumer<EnterYourNumberCubit, EnterYourNumberState>(
        builder: (context, state) {
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
                    items: const [
                      DropdownMenuItem<String>(
                        value: "+20",
                        child: Text('+20'),
                      ),
                      DropdownMenuItem<String>(
                        value: "+1",
                        child: Text('+1'),
                      ),
                      DropdownMenuItem<String>(
                        value: "+21",
                        child: Text('+21'),
                      ),
                      DropdownMenuItem<String>(
                        value: "+40",
                        child: Text('+40'),
                      )
                    ],
                    onChanged: (newValue) {
                      valueCubit.changeValueOfDropDownMethod(newValue!);
                    },
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
}
