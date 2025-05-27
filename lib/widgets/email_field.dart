// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EmailInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;

  const EmailInputField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: controller,
        autocorrect: false,
        validator: validator,
        style: TextStyle(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blueGrey.withOpacity(0.1),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.greyColor),
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.greyColor),
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
              color: AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(8.0.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
              color: AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          errorMaxLines: 3,
          contentPadding: EdgeInsets.fromLTRB(12.0.w, 15.0.h, 12.0.w, 15.0.h),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14.0.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: SvgPicture.asset('svgs/User.svg', height: 18.h, width: 18.w),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
