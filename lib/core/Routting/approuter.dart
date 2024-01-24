import 'package:docdoc_app/Features/ForgetPassword_Screen/UI/forget_password_screen.dart';
import 'package:docdoc_app/Features/Login/UI/login/login.dart';
import 'package:docdoc_app/Features/Login/UI/onboarding_screen/on_boarding_screen.dart';
import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:flutter/material.dart';

import '../../Features/authentication/fill_profile/ui/fill_profile_screen.dart';
import '../../Features/authentication/otp/ui/otp_screen.dart';
import '../../Features/authentication/register/UI/register_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingscreen:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case Routes.loginscreen:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.fillProfileScreen:
        return MaterialPageRoute(builder: (_) => const FillProfileScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const Register());
      case Routes.forgetpasswordscreen:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case Routes.otpScreen:
        return MaterialPageRoute(builder: (_) => const OTPScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Text('No Route defined fo ${settings.name}'),
                ));
    }
  }
}
