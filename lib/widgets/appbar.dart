import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  final bool enableBackButton;

  const AppbarWidget({
    super.key,
    required this.title,
    this.enableBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.black,
      leading: enableBackButton ? const BackButton(color: Colors.white) : null,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
