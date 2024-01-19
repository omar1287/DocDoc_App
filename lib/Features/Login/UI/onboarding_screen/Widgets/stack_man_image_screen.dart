import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackManAndImage extends StatelessWidget {
  const StackManAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/logo_with_low_opathity.png'),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    stops: const [0.14, 0.4])),
            child: Image.asset('assets/images/doctor.png')),
         Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text('Best Doctor ',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 34.sp,
          color: ColorManager.mainblue
        ),textAlign: TextAlign.center,),
                Text('Appointment App ',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.sp,
                    color: ColorManager.mainblue
                ),textAlign: TextAlign.center,),
              ],
            ))
      ],
    );
  }
}
