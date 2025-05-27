import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/email_field.dart';
import 'package:e_commerce_app/widgets/password_field.dart';
import 'package:e_commerce_app/widgets/primary_button.dart';
import 'package:e_commerce_app/widgets/social_login_button.dart';
import 'package:e_commerce_app/widgets/textbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        text: "Welcome\n",
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 36.h,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
        ),
        children: [
          TextSpan(
            text: "Back!",
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
        SizedBox(height: 40.h),
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
        SizedBox(height: 5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20.w),
            LabelButton(
              onPressed: () {},
              label: "Forgot Password?",
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.primaryColor,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
        SizedBox(height: 40.h),
        PrimaryButton(
          label: 'Login',
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
      SizedBox(height: 40.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create an account ",
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
            label: "Sign Up",
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
