import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class HaveOrDontHaveAnAccountWidget extends StatelessWidget {
  const new({
    super.key,
    required this.title,
    required this.title2,
    required this.onTap,
  });
  final String title;
  final String title2;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),
        ),
        Text(' '),
        GestureDetector(
          onTap: onTap,
          child: Text(
            title2,
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
