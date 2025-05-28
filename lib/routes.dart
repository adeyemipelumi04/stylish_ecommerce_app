// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce_app/features/create_account/create_account.dart';
import 'package:e_commerce_app/features/forgot_password/forgot_password.dart';
import 'package:e_commerce_app/features/get_started/get_started.dart';
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
    forgot_password: (context) => const ForgotPasswordScreen(),
    get_started: (context) => const GetStartedScreen(),
    //test: (context) => MyApp(),
  };

  static String splash = '/';
  static String pageindicator = '/page_indicator';
  static String login = '/login_screen';
  static String create_account = '/create_account';
  static String forgot_password = '/forgot_password';
  static String get_started = '/get_started';

  // static String test = '/test';
}
