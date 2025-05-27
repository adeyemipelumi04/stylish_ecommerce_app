import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/email_field.dart';
import 'package:e_commerce_app/widgets/password_field.dart';
import 'package:e_commerce_app/widgets/primary_button.dart';
import 'package:e_commerce_app/widgets/social_login_button.dart';
import 'package:e_commerce_app/widgets/labelbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
            SizedBox(height: 60.h),
            _buildSocialLoginButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTop(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Create an\n",
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 36.h,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
        ),
        children: [
          TextSpan(
            text: "account",
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
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  return Form(
    key: formKey,
    child: Column(
      children: [
        EmailInputField(
          controller: emailController,
          hint: "Username or Email address",
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your username or email address';
            }
            // Simple email regex
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            // Username: at least 3 chars, no spaces
            final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,}$');
            if (!emailRegex.hasMatch(value) && !usernameRegex.hasMatch(value)) {
              return 'Enter a valid email or username (min 3 chars, no spaces)';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        PasswordInputField(
          controller: passwordController,
          hint: 'Password',
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        PasswordInputField(
          controller: passwordController,
          hint: 'Confirm Password',
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Please confirm your password';
            }
            if (value != passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
        SizedBox(height: 10.h),
        Text(
          "By creating an account, you agree to our Terms of Service and Privacy Policy.",
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.greyColor,
            fontFamily: 'Montserrat',
          ),
        ),
        SizedBox(height: 30.h),
        PrimaryButton(
          label: 'Create Account',
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

Widget _buildSocialLoginButtons(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "-OR Continue with-",
        style: TextStyle(
          fontSize: 14.sp,
          color: AppColors.greyColor,
          fontFamily: 'Montserrat',
        ),
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButton(
            onPressed: () {
              //I'm am using a firebase auth provider for Google login
              // Handle Google login logic
            },
            icon: SvgPicture.asset('svgs/google_svg.svg'),
          ),
          SizedBox(width: 10.w),
          SocialButton(
            onPressed: () {
              //I'm am using a firebase auth provider for Google login
              // Handle Google login logic
            },
            icon: SvgPicture.asset('svgs/apple_svg.svg'),
          ),
          SizedBox(width: 10.w),
          SocialButton(
            onPressed: () {
              //I'm am using a firebase auth provider for Google login
              // Handle Google login logic
            },
            icon: SvgPicture.asset('svgs/facebook_svg.svg'),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I have an account ",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.greyColor,
              fontFamily: 'Montserrat',
            ),
          ),
          LabelButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            label: "Login",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
              fontFamily: 'Montserrat',
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    ],
  );
}
