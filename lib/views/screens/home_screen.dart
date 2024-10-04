import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopinow/config/constants/app_colors.dart';
import 'package:shopinow/config/constants/app_texts.dart';
import 'package:shopinow/config/theme/app_text_styles.dart';
import 'package:shopinow/views/widgets/categories_list.dart';
import 'package:shopinow/views/widgets/product_grid.dart';
import 'package:shopinow/views/widgets/search_bar_widget.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 80,
          backgroundColor: AppColors.primary000,
          actions: [
            IconButton(
                onPressed: onNotificationPressed(),
                icon: const Icon(
                  Icons.notifications_outlined,
                  size: 28,
                  color: AppColors.primary900,
                ))
          ],
          title: const Text(
            AppTexts.homeScreenTitle,
            style: AppTextStyles.header2,
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.07),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: SearchBarWidget()),
                    const SizedBox(width: 8),
                    buildFilterButton(),
                  ],
                ),
                const SizedBox(height: 16),
                const CategoriesList(),
                const SizedBox(height: 24),
                Expanded(child: ProductsGrid())
              ],
            )),
      ),
    );
  }

  Container buildFilterButton() {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
          color: AppColors.primary900, borderRadius: BorderRadius.circular(10)),
      child: SvgPicture.asset(
        AppTexts.filterIcon,
        fit: BoxFit.none,
        colorFilter:
            const ColorFilter.mode(AppColors.primary000, BlendMode.srcIn),
      ),
    );
  }

  onNotificationPressed() {
    //TODO:
  }
}
