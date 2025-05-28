import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/email_field.dart';
import 'package:e_commerce_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTop(context),
            SizedBox(height: 40.h),
            _buildFormField(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTop(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Forgot\n",
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 36.h,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
        ),
        children: [
          TextSpan(
            text: "Password?",
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 36.h,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFormField(BuildContext context) {
  final emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  return Form(
    key: formKey,
    child: Column(
      children: [
        EmailInputField(
          controller: emailController,
          hint: "Enter your email address",
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email address';
            }
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            if (!emailRegex.hasMatch(value) && (value.contains(' '))) {
              return 'Enter a valid email address';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        Text(
          "We will send you an email with a link to reset your password.",
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.greyColor,
            fontFamily: 'Montserrat',
          ),
        ),
        SizedBox(height: 40.h),
        PrimaryButton(
          label: 'Submit',
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // Handle login logic
            }
          },
          backgroundColor: AppColors.primaryColor,
        ),
      ],
    ),
  );
}
