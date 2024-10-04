import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/constants/app_colors.dart';
import '../../config/constants/app_texts.dart'; // Assuming heartIcon is defined here
import '../../config/theme/app_text_styles.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 2 / 3,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    width: double.infinity,
                    clipBehavior: Clip.hardEdge,
                    child: Center(
                      child: Image.asset(
                        'assets/images/image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Text(
                    'Regular Fit Slogan',
                    style: AppTextStyles.body1SemiBold.copyWith(
                      color: AppColors.primary900,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '\$ 1,190',
                    style: AppTextStyles.body3Medium.copyWith(
                      color: AppColors.primary500,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 12, // Position the favorite button 12px from the right
              top: 12, // Position the favorite button 12px from the top
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: AppColors.primary000, // Background color
                  borderRadius: BorderRadius.circular(8), // Border radius of 8
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x52525252)
                          .withOpacity(0.25), // Shadow color with 25% opacity
                      offset: const Offset(0, 8), // y = 8
                      blurRadius: 10, // Blur = 10
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {
                    // Handle favorite button tap here
                  },
                  icon: SvgPicture.asset(
                    AppTexts.heartIcon, // Assuming you have heartIcon here
                    color: AppColors.primary900, // Heart icon color
                  ),
                  iconSize: 16, // Adjust icon size if needed
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
