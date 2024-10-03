import 'package:flutter/material.dart';
import 'package:shopinow/config/constants/app_colors.dart';
import 'package:shopinow/config/constants/app_texts.dart';
import 'package:shopinow/config/theme/app_text_styles.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
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
    ));
  }

  onNotificationPressed() {
    //TODO:
  }
}
