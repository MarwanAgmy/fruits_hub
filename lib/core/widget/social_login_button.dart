import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const new({
    super.key,
    required this.onPressed,
    required this.title,
    required this.image,
  });
  final VoidCallback onPressed;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xffDDDFDF), width: 1),
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16,
          ),
          leading: SvgPicture.asset(image),
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
        ),
      ),
    );
  }
}
