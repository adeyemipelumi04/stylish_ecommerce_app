import 'package:e_commerce_app/features/wishlist/wishlist_items.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildAppBar(),
              SizedBox(height: 10.h),
              _buildSearchBar(),
              _buildSortandFilterRow(),
              SizedBox(height: 10.h),
              WishListItems(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAppBar() {
  return AppbarWidget(
    sideBarIcon: IconButton(
      icon: SvgPicture.asset('svgs/menu.svg'),
      onPressed: () {
        // Handle menu button press
      },
    ),
    appBarSvgAsset: 'svgs/appbar_logo.svg',
    avatarIcon: IconButton(
      icon: SvgPicture.asset('svgs/avatar.svg'),
      onPressed: () {
        // Handle avatar button press
      },
    ),
  );
}

Widget _buildSearchBar() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'search any Product...',
      prefixIcon: const Icon(Icons.search, color: Colors.grey),
      suffixIcon: IconButton(
        icon: const Icon(Icons.mic, color: Colors.grey),
        onPressed: () {},
      ),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
    ),
  );
}

Widget _buildSortandFilterRow() {
  return Row(
    children: [
      const Text(
        '100k+ Items',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
      ),
      const Spacer(),
      ElevatedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset('svgs/sort_svg.svg'),
        label: const Text(
          'Sort',
          style: TextStyle(fontSize: 14, color: AppColors.blackColor),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        ),
      ),
      const SizedBox(width: 8),
      ElevatedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset('svgs/filter_svg.svg'),
        label: const Text(
          'Filter',
          style: TextStyle(fontSize: 14, color: AppColors.blackColor),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        ),
      ),
    ],
  );
}
