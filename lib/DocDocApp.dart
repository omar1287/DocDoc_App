import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/Routting/approuter.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key,required this.appRouter});
final AppRouter appRouter;


  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(375,812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'DocDocApp',
        theme: ThemeData(
          primaryColor:ColorManager.mainblue,
          scaffoldBackgroundColor: Colors.white
        ),
debugShowCheckedModeBanner: false,
onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onboardingscreen,
      ),
    );
  }
}
