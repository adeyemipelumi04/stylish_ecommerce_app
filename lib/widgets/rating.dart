import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 12.0.sp,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 12.0.sp,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 12.0.sp,
          color: Colors.yellow,
        ),
        Icon(
          size: 12.0.sp,
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 12.0.sp,
          color: Colors.yellow,
        )
      ],
    );
  }
}
