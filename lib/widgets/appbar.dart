import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppbarWidget extends StatelessWidget {
  final IconButton sideBarIcon;
  final String? appBarSvgAsset;
  final IconButton avatarIcon;
  const AppbarWidget({
    super.key,
    this.appBarSvgAsset,
    required this.sideBarIcon,
    required this.avatarIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: sideBarIcon,
          onPressed: sideBarIcon.onPressed,
          iconSize: 30.0.w,
        ),
        SvgPicture.asset(appBarSvgAsset!, width: 30.w, height: 30.h),
        IconButton(
          icon: avatarIcon,
          onPressed: avatarIcon.onPressed,
          iconSize: 30.0.w,
        ),
      ],
    );
  }
}
