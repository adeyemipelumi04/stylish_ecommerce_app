import 'package:e_commerce_app/features/splashscreen/login_screen.dart';
import 'package:e_commerce_app/features/splashscreen/splash_screen.dart';
import 'package:e_commerce_app/widgets/page_indicator.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    pageindicator: (context) => SplashScreenPageIndicator(),
    login: (context) => const LoginScreen(),
    //test: (context) => MyApp(),
    //   welcome: (context) => const WelcomeScreen(),
    //   onboarding: (context) => const OnboardingScreen(),
    //   authentication: (context) => const AuthenticationScreen(),
  };

  static String splash = '/';
  static String pageindicator = '/page_indicator';
  static String login = '/login';
  // static String test = '/test';
  // static String welcome = '/welcome';
  // static String onboarding = '/onboarding';
  // static String authentication = '/authentication';
  // static String signup = '/signup';
}
