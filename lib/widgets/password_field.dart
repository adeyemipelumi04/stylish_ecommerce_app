// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

class PasswordInputField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;

  const PasswordInputField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
  });

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  final FocusNode _focus = FocusNode();
  bool _obscureText = true;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.dispose();
    _focus.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        focusNode: _focus,
        cursorColor: AppColors.blackColor,
        controller: widget.controller,
        autocorrect: false,
        validator: widget.validator,
        obscureText: _obscureText,
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
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontSize: 14.0.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h, vertical: 24.0.h),
            child: SvgPicture.asset(
              'svgs/password.svg',
              height: 18.h,
              width: 18.w,
            ),
          ),
          suffixIcon: GestureDetector(
            child:
                // Container(
                //   padding: const EdgeInsets.all(14.0),
                //   child:
                _obscureText
                    ? IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(Icons.visibility_off, size: 24.sp),
                    )
                    : IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(Icons.visibility_outlined, size: 24.sp),
                    ),
            // ),
            onTap:
                () => setState(() {
                  _obscureText = !_obscureText;
                }),
          ),
        ),
      ),
    );
  }
}
