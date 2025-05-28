import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/state.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Stylish E-Commerce App',
          themeMode: ref.watch(themeMode),
          theme: ThemeData(
            useMaterial3: true,
            brightness: MaterialTheme.lightScheme().brightness,
            colorScheme: MaterialTheme.lightScheme(),
            scaffoldBackgroundColor: Colors.white,
            canvasColor: MaterialTheme.lightScheme().surface,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: MaterialTheme.darkScheme().brightness,
            colorScheme: MaterialTheme.darkScheme(),
            scaffoldBackgroundColor: Colors.black,
            canvasColor: MaterialTheme.darkScheme().surface,
          ),
          initialRoute: AppRoutes.login,
          routes: AppRoutes.routes,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: MediaQuery.of(context).textScaler.clamp(
                  minScaleFactor: 1.0, // Minimum scale factor allowed.
                  maxScaleFactor: 1.0, // Maximum scale factor allowed.
                ),
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
