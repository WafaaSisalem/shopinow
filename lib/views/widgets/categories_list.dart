import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';
import '../../config/theme/app_text_styles.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (itemBuilder, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            height: 36,
            width: index == 0 ? 60 : 92,
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? AppColors.primary900
                  : AppColors.primary000,
              border: Border.all(color: AppColors.primary100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'All',
                style: AppTextStyles.body1Medium.copyWith(
                    color: index == selectedIndex
                        ? AppColors.primary000
                        : AppColors.primary900),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: 5,
      ),
    );
  }
}
