import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopinow/config/constants/app_colors.dart';
import 'package:shopinow/config/constants/app_texts.dart';
import 'package:shopinow/config/theme/app_text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key});
  final OutlineInputBorder searchBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColors.primary100),
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextField(
        decoration: InputDecoration(
          hintText: AppTexts.searchHint,
          hintStyle:
              AppTextStyles.body1Regular.copyWith(color: AppColors.primary400),
          enabledBorder: searchBorder,
          focusedBorder: searchBorder,
          prefixIcon: SvgPicture.asset(
            AppTexts.searchIcon,
            fit: BoxFit.none,
            colorFilter:
                const ColorFilter.mode(AppColors.primary300, BlendMode.srcIn),
          ),
          suffixIcon: SvgPicture.asset(
            AppTexts.micIcon,
            fit: BoxFit.none,
            colorFilter:
                const ColorFilter.mode(AppColors.primary300, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
