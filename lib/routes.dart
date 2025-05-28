import 'package:e_commerce_app/features/create_account/create_account.dart';
import 'package:e_commerce_app/features/loginscreen/login_screen.dart';
import 'package:e_commerce_app/features/splashscreen/splash_screen.dart';
import 'package:e_commerce_app/widgets/page_indicator.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    pageindicator: (context) => SplashScreenPageIndicator(),
    login: (context) => const LoginScreen(),
    create_account: (context) => const CreateAccountScreen(),
    //test: (context) => MyApp(),
    //   welcome: (context) => const WelcomeScreen(),
    //   onboarding: (context) => const OnboardingScreen(),
    //   authentication: (context) => const AuthenticationScreen(),
  };

  static String splash = '/';
  static String pageindicator = '/page_indicator';
  static String login = '/login';
  // ignore: non_constant_identifier_names
  static String create_account = '/create_account';
  // static String test = '/test';
  // static String welcome = '/welcome';
  // static String onboarding = '/onboarding';
  // static String authentication = '/authentication';
  // static String signup = '/signup';
}
