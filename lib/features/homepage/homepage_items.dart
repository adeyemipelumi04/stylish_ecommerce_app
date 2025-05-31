// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class DealoftheDay extends StatelessWidget {
  const DealoftheDay({
    super.key,
    this.title,
    this.image,
    this.price,
    this.description,
    this.rating,
    this.discount,
    this.no_of_rating,
    this.percentage_off,
    this.onTap,
  });

  final String? title;
  final String? image;
  final String? price;
  final String? description;
  final Icon? rating;
  final String? discount;
  final String? no_of_rating;
  final String? percentage_off;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Stack(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final item = dealoftheDay[index];
              return GestureDetector(
                onTap: onTap,
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  height: 200,
                  width: 170,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item['image'],
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) =>
                                    const Icon(Icons.broken_image),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      // Title
                      Text(
                        item['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // Description
                      Text(
                        item['description'],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      // Price
                      Text(
                        item['price'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 2),
                      // Discount and Percentage Off
                      Row(
                        children: [
                          Text(
                            item['discount'],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            item['percentage_off'],
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // Rating and Number of Ratings
                      Row(
                        children: [
                          rating ?? const SizedBox.shrink(),
                          const SizedBox(width: 4),
                          Text(
                            item['number_of_rating'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          Positioned(
            right: 8,
            top: 110 - 28, // (height/2 - button radius)
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Colors.white,
              elevation: 3,
              onPressed: () {
                // Add your action here
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> dealoftheDay = [
  {
    'title': 'Women Printed Kurta',
    'description': 'Neque porro quisquam est qui dolorem ipsum quia',
    'price': r'$1500',
    'discount': r'$2499',
    'percentage_off': '40% Off',
    'number_of_rating': '56890',
    'image': 'pngs/Women_printed_kurta.png',
  },
  {
    'title': 'HRX by Hrithik Roshan',
    'description': 'Neque porro quisquam est qui dolorem ipsum quia',
    'price': r'$2499',
    'discount': r'$4999',
    'percentage_off': '50% Off',
    'number_of_rating': '344567',
    'image': 'pngs/HRX_by_Hrithik_Roshan.png',
  },
  {
    'title': 'Mens Starry',
    'description': 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
    'price': r'$399',
    'discount': r'$599',
    'percentage_off': '40% Off',
    'number_of_rating': '152,344',
    'image': 'pngs/Mens_Starry.png',
  },
  {
    'title': 'Pink Embroiden',
    'description': 'EARTHEN Rose Pink Embroidered Tiered Max...',
    'price': r'$1500',
    'discount': r'$2499',
    'percentage_off': '40% Off',
    'number_of_rating': '56890',
    'image': 'pngs/Pink_Embroiden.png',
  },
  {
    'title': 'Jordan Stay',
    'description': "The classic Air Jordan 12 to create a shoe that's fres...",
    'price': r'$4999',
    'discount': r'$6999',
    'percentage_off': '40% Off',
    'number_of_rating': '10,234,456',
    'image': 'pngs/Jordan_Stay.png',
  },
];

class TrendingProducts extends StatelessWidget {
  const TrendingProducts({
    super.key,
    this.title,
    this.image,
    this.price,
    this.discount,
    this.percentage_off,
    this.onTap,
  });

  final String? title;
  final String? image;
  final String? price;
  final String? discount;
  final String? percentage_off;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final item = tredeningProduct[index];
              return GestureDetector(
                onTap: onTap,
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  height: 200,
                  width: 170,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item['image'],
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) =>
                                    const Icon(Icons.broken_image),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      // Title
                      Text(
                        item['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines: 3,
                        //overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item['price'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 2),
                      // Discount and Percentage Off
                      Row(
                        children: [
                          Text(
                            item['discount'],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            item['percentage_off'],
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          // Floating Action Button
          Positioned(
            right: 8,
            top: 110 - 28, // (height/2 - button radius)
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Colors.white,
              elevation: 3,
              onPressed: () {
                // Add your action here
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> tredeningProduct = [
  {
    'title': "IWC Schaffhausen2021 Pilot's Watch 'SIHH 2019' 44mm",
    'price': r'$650',
    'discount': r'$1599',
    'percentage_off': '60% Off',
    'image': 'pngs/watch.png',
  },
  {
    'title': 'Labbin White Sneakers For Men and Female',
    'price': r'$650',
    'discount': r'$1250',
    'percentage_off': '70% Off',
    'image': 'pngs/sneakers.png',
  },
  {
    'title': "IWC Schaffhausen2021 Pilot's Watch 'SIHH 2019' 44mm",
    'price': r'$650',
    'discount': r'$1599',
    'percentage_off': '60% Off',
    'image': 'pngs/watch.png',
  },
  {
    'title': 'Labbin White Sneakers For Men and Female',
    'price': r'$650',
    'discount': r'$1250',
    'percentage_off': '70% Off',
    'image': 'pngs/sneakers.png',
  },
  {
    'title': "IWC Schaffhausen2021 Pilot's Watch 'SIHH 2019' 44mm",
    'price': r'$650',
    'discount': r'$1599',
    'percentage_off': '60% Off',
    'image': 'pngs/watch.png',
  },
  {
    'title': 'Labbin White Sneakers For Men and Female',
    'price': r'$650',
    'discount': r'$1250',
    'percentage_off': '70% Off',
    'image': 'pngs/sneakers.png',
  },
];
