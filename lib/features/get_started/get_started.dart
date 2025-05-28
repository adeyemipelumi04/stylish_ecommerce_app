import 'package:e_commerce_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/pngs/splash_image.png', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.3)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'You want\nAuthentic, here\nyou go!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black54,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              Text(
                'Find it here, buy it now!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.h),
                child: PrimaryButton(
                  onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                  },
                  label: "Get Started",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
