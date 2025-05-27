import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final TextStyle style;

  const LabelButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed, child: Text(label, style: style));
  }
}
