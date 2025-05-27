import 'package:e_commerce_app/features/splashscreen/choose_products.dart';
import 'package:e_commerce_app/features/splashscreen/get_your_orders.dart';
import 'package:e_commerce_app/features/splashscreen/make_payment.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/textbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenPageIndicator extends StatefulWidget {
  const SplashScreenPageIndicator({super.key});

  @override
  State<SplashScreenPageIndicator> createState() =>
      _SplashScreenPageIndicatorState();
}

class _SplashScreenPageIndicatorState extends State<SplashScreenPageIndicator> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [ChooseProducts(), MakePayment(), GetYourOrder()],
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
              right: 20.0,
              left: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage > 0)
                  LabelButton(
                    onPressed: () {
                      _controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    label: 'Prev',

                    style: TextStyle(
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                      fontFamily: 'Montserrat',
                    ),
                  )
                else
                  SizedBox(width: 64.0.h), // To keep spacing consistent
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: AppColors.blackColor,
                    strokeWidth: 2,
                    type: WormType.thin,
                    dotColor: AppColors.greyColor,
                  ),
                ),
                LabelButton(
                  onPressed: () {
                    if (_currentPage == 2) {
                      Navigator.of(
                        context,
                      ).pushNamedAndRemoveUntil('/login', (route) => false);
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  label: _currentPage == 2 ? 'Get Started' : 'Next',
                  style: TextStyle(
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
