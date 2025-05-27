import 'package:e_commerce_app/widgets/textbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseProducts extends StatelessWidget {
  const ChooseProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTop(context),
          SizedBox(height: 20.h),
          _buildImage(context),
          SizedBox(height: 20.h),
          _buildChooseProductText(),
        ],
      ),
    );
  }

  Widget _buildTop(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "1",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "/3",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          LabelButton(
            onPressed: () {
              // Navigate to previous screen
              Navigator.pop(context);
            },
            label: 'Skip',
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

Widget _buildImage(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Center(
    child: Image.asset(
      'assets/pngs/fashion shop-rafiki 1.png',
      height: size.height * 0.35,
      width: size.width * 0.7,
      fit: BoxFit.contain,
    ),
  );
}

Widget _buildChooseProductText() {
  return Column(
    children: [
      Center(
        child: Text(
          "Choose Products",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      SizedBox(height: 10.h),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            "Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.",
            style: TextStyle(color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  );
}
