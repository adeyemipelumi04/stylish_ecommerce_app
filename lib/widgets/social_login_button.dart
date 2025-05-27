import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class SocialButton extends StatelessWidget {
  final Function()? onPressed;

  final Widget? icon;
  final Color backgroundColor;

  const SocialButton({
    super.key,
    required this.onPressed,

    this.icon,
    this.backgroundColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50.w,
        width: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor3,
          border: Border.all(color: AppColors.primaryColor2, width: 2.0),
        ),
        child: Center(child: icon ?? SizedBox.shrink()),
      ),
    );
  }
}
