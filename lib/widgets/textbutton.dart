import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final Color? textColor;

  const LabelButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w400,
          color: textColor,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }
}
