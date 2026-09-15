import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar bulidAppBar(BuildContext context, {required String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    title: Text(title, style: AppTextStyles.bold19),
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(Icons.arrow_back_ios_new),
    ),
  );
}
