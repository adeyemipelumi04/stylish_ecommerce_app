import 'package:e_commerce_app/features/homepage/banner_widget.dart';
import 'package:e_commerce_app/features/homepage/homepage_items.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              buildAllFeaturedTopTab(),
              SizedBox(height: 10.h),
              BannerWidget(),
              SizedBox(height: 10.h),
              _buildDealoftheDayWidget(),
              SizedBox(height: 10.h),
              DealoftheDay(),
              SizedBox(height: 10.h),
              _buildSpecialOffers(),
              SizedBox(height: 10.h),
              _buildFlatandHeels(),
              SizedBox(height: 10.h),
              _buildTrendingProductsWidget(),
              SizedBox(height: 10.h),
              TrendingProducts(),
              SizedBox(height: 10.h),
              _buildNewArrivals(),
              SizedBox(height: 10.h),
              _buildSponsored(),
            ],
          ),
        ),
      ),
    );
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
        'All Featured',
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

Widget buildAllFeaturedTopTab() {
  return Container(
    height: 75.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: allFeaturedTopTab.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: 71,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 48.h,
                  height: 48.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        allFeaturedTopTab[index]['image'],
                        width: 48.h,
                        height: 48.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Text(
                  allFeaturedTopTab[index]['title'],
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget _buildDealoftheDayWidget() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // First column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deal of the Day',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.timer_outlined, color: Colors.white, size: 16),
                SizedBox(width: 4),
                Text(
                  '20 hours remaining',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        // Second column
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.white),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('View all', style: TextStyle(color: Colors.white)),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildSpecialOffers() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset('pngs/special_offers.png', fit: BoxFit.contain),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Special Offers 😱',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'We make sure you get the offer\nyou need at best prices',
                style: TextStyle(color: Colors.black, fontSize: 14),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildFlatandHeels() {
  return GestureDetector(
    onTap: () {
      // Handle tap event
    },
    child: Image.asset(
      'pngs/flat_and_heels.png',
      width: double.infinity,
      height: 200,
      fit: BoxFit.contain,
    ),
  );
}

Widget _buildTrendingProductsWidget() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppColors.primaryColor2,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // First column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Products',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                  size: 16,
                ),
                SizedBox(width: 4),
                Text(
                  'Last Date: 05/31/24',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        // Second column
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.white),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('View all', style: TextStyle(color: Colors.white)),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildNewArrivals() {
  return Container(
    height: 340,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        // Image takes 80% of the container height
        SizedBox(
          height: 0.8 * 300,
          child: Image.asset(
            'pngs/summer_sale.png',
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First column with texts
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'New Arrivals',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Summer 25 Collections',
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                  ],
                ),
              ),
              // Second column with button
              Expanded(
                flex: 1,
                child: Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 18,
                    ),
                    label: const Text(
                      'View all',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildSponsored() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sponsored',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'pngs/50.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text(
              'Upto 50% off',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 18),
          ],
        ),
      ],
    ),
  );
}

final List<Map<String, dynamic>> allFeaturedTopTab = [
  {'title': 'Beauty', 'image': 'pngs/beauty.png'},
  {'title': 'Fashion', 'image': 'pngs/fashion.png'},
  {'title': 'Kids', 'image': 'pngs/kids.png'},
  {'title': 'Mens', 'image': 'pngs/mens.png'},
  {'title': 'Womens', 'image': 'pngs/womens.png'},
  {'title': 'Trending', 'image': 'pngs/kids.png'},
  {'title': 'Celebrity', 'image': 'pngs/fashion.png'},
];

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Wishlist Page')));
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Cart Page')));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Search Page')));
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Settings Page')));
  }
}
