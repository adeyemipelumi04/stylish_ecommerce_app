import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/textbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetYourOrder extends StatelessWidget {
  const GetYourOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTop(context),
          SizedBox(height: 70.h),
          _buildImage(context),
          SizedBox(height: 20.h),
          _buildGetYourOrderText(),
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
              text: "3",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "/3",
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          LabelButton(
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil('/login', (route) => false);
            },
            label: 'Skip',
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
              fontFamily: 'Montserrat',
            ),
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
      'assets/pngs/Shopping bag-rafiki 1.png',
      height: size.height * 0.35,
      width: size.width * 0.8,
      fit: BoxFit.contain,
    ),
  );
}

Widget _buildGetYourOrderText() {
  return Column(
    children: [
      Center(
        child: Text(
          "Get Your Order",
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
            "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.",
            style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 15,
              fontFamily: 'Montserrat',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  );
}
