import 'package:flutter/material.dart';

class WishListItems extends StatelessWidget {
  const WishListItems({
    super.key,
    this.title,
    this.image,
    this.price,
    this.description,
    this.rating,
    // ignore: non_constant_identifier_names
    this.no_of_rating,
    this.onTap,
  });

  final String? title;
  final String? image;
  final String? price;
  final String? description;
  final Icon? rating;
  // ignore: non_constant_identifier_names
  final String? no_of_rating;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items side by side
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7, // Adjust as needed for your design
          ),
          itemCount: wishlistItems.length,
          itemBuilder: (context, index) {
            final item = wishlistItems[index];
            return GestureDetector(
              onTap: onTap,
              child: Container(
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
                    SizedBox(
                      height: 150,
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

                    Spacer(),
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
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
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
        );
      },
    );
  }
}

final List<Map<String, dynamic>> wishlistItems = [
  {
    'title': 'Black Winter',
    'description': 'Autumn And Winter Casual cotton-padded jacket...',
    'price': r'$499',
    'number_of_rating': '6,890',
    'image': 'pngs/black_winter.png',
  },
  {
    'title': "Men's Starry",
    'description': 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
    'price': r'$399',
    'number_of_rating': '1,446,890',
    'image': 'pngs/Mens_Starry.png',
  },
  {
    'title': 'Black Dress',
    'description': 'Solid Black Dress for Women, Sexy Chain Shorts Ladies...',
    'price': r'$499',
    'number_of_rating': '6,890',
    'image': 'pngs/black_dress.png',
  },
  {
    'title': 'Pink Embroiden',
    'description': 'EARTHEN Rose Pink Embroidered Tiered Max...',
    'price': r'$1,900',
    'number_of_rating': '46,890',
    'image': 'pngs/Pink_Embroiden.png',
  },
  {
    'title': 'Flare Dress',
    'description': 'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
    'price': r'$1,990',
    'number_of_rating': '3,346,890',
    'image': 'pngs/flare_dress.png',
  },
  {
    'title': 'Denim Dress',
    'description': 'Blue cotton denim dress Look 2 Printed cotton dr....',
    'price': r'$999',
    'number_of_rating': '27,890',
    'image': 'pngs/denim_dress.png',
  },
  {
    'title': 'Jordan Stay',
    'description': "The classic Air Jordan 12 to create a shoe that's fres...",
    'price': r'$4,999',
    'number_of_rating': '10,236,890',
    'image': 'pngs/Jordan_Stay.png',
  },
  {
    'title': 'Sony PS4',
    'description': 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...',
    'price': r'$1,999',
    'number_of_rating': '8,234,890',
    'image': 'pngs/sony_ps4.png',
  },
  {
    'title': 'Black Jacket 1200',
    'description': 'This warm and comfortable jacket is great for learni...',
    'price': r'$2,999',
    'number_of_rating': '600,890',
    'image': 'pngs/black_jacket.png',
  },
  {
    'title': 'D7200 Digital Camera',
    'description': 'D7200 Digital Camera (Nikon) In New Area...',
    'price': r'$26,999',
    'number_of_rating': '67,890',
    'image': 'pngs/digital_camera.png',
  },
  {
    'title': "Men's & Boy's Shoe",
    'description': 'George Walker Derby Brown Formal Shoes.',
    'price': r'$999',
    'number_of_rating': '13,456,890',
    'image': 'pngs/mens_boys_shoe.png',
  },
  {
    'title': 'Black Winter',
    'description': 'Autumn And Winter Casual cotton-padded jacket...',
    'price': r'$499',
    'number_of_rating': '6,890',
    'image': 'pngs/black_winter.png',
  },
  {
    'title': "Men's Starry",
    'description': 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
    'price': r'$399',
    'number_of_rating': '1,446,890',
    'image': 'pngs/Mens_Starry.png',
  },
  {
    'title': 'Black Dress',
    'description': 'Solid Black Dress for Women, Sexy Chain Shorts Ladies...',
    'price': r'$499',
    'number_of_rating': '6,890',
    'image': 'pngs/black_dress.png',
  },
  {
    'title': 'Pink Embroiden',
    'description': 'EARTHEN Rose Pink Embroidered Tiered Max...',
    'price': r'$1,900',
    'number_of_rating': '46,890',
    'image': 'pngs/Pink_Embroiden.png',
  },
  {
    'title': 'Flare Dress',
    'description': 'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
    'price': r'$1,990',
    'number_of_rating': '3,346,890',
    'image': 'pngs/flare_dress.png',
  },
  {
    'title': 'Denim Dress',
    'description': 'Blue cotton denim dress Look 2 Printed cotton dr....',
    'price': r'$999',
    'number_of_rating': '27,890',
    'image': 'pngs/denim_dress.png',
  },
  {
    'title': 'Jordan Stay',
    'description': "The classic Air Jordan 12 to create a shoe that's fres...",
    'price': r'$4,999',
    'number_of_rating': '10,236,890',
    'image': 'pngs/Jordan_Stay.png',
  },
  {
    'title': 'Sony PS4',
    'description': 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...',
    'price': r'$1,999',
    'number_of_rating': '8,234,890',
    'image': 'pngs/sony_ps4.png',
  },
  {
    'title': 'Black Jacket 1200',
    'description': 'This warm and comfortable jacket is great for learni...',
    'price': r'$2,999',
    'number_of_rating': '600,890',
    'image': 'pngs/black_jacket.png',
  },
  {
    'title': 'D7200 Digital Camera',
    'description': 'D7200 Digital Camera (Nikon) In New Area...',
    'price': r'$26,999',
    'number_of_rating': '67,890',
    'image': 'pngs/digital_camera.png',
  },
  {
    'title': "Men's & Boy's Shoe",
    'description': 'George Walker Derby Brown Formal Shoes.',
    'price': r'$999',
    'number_of_rating': '13,456,890',
    'image': 'pngs/mens_boys_shoe.png',
  },
];
