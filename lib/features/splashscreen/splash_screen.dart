import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<bool> _loadApp() async {
    await Future.delayed(Duration(seconds: 3)); // simulate loading
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SvgPicture.asset(
                'assets/svgs/stylish.svg',
                width: 100,
                height: 100,
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading app'));
        } else {
          // Navigate to the next screen after loading
          WidgetsBinding.instance.addPostFrameCallback((_) {
            //Navigator.pushReplacementNamed(context, '/page_indicator');
          });
          // Return an empty container while navigating
          return Scaffold(
            backgroundColor: Colors.white,
            body: SizedBox.shrink(),
          );
        }
      },
    );
  }
}
