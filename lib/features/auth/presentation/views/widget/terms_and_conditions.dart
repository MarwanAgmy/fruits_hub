import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({this.onChanged, this.onTermsTap, super.key});

  final ValueChanged<bool>? onChanged;
  final VoidCallback? onTermsTap;

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late final TapGestureRecognizer _termsTapRecognizer;
  bool _isAccepted = false;

  @override
  void initState() {
    super.initState();
    _termsTapRecognizer = TapGestureRecognizer()..onTap = widget.onTermsTap;
  }

  // @override
  // void didUpdateWidget(covariant TermsAndConditionsWidget oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (oldWidget.onTermsTap != widget.onTermsTap) {
  //     _termsTapRecognizer.onTap = widget.onTermsTap;
  //   }
  // }

  @override
  void dispose() {
    _termsTapRecognizer.dispose();
    super.dispose();
  }

  void _toggleCheckbox() {
    setState(() => _isAccepted = !_isAccepted);
    widget.onChanged?.call(_isAccepted);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: _toggleCheckbox,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: _isAccepted ? AppColors.primaryColor : Colors.white,
                border: Border.all(
                  color: _isAccepted
                      ? AppColors.primaryColor
                      : const Color(0xffD9DEDF),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: _isAccepted
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : null,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text.rich(
              TextSpan(
                text: 'من خلال إنشاء حساب، فإنك توافق على ',
                style: AppTextStyles.semiBold13.copyWith(
                  color: const Color(0xff949D9E),
                ),
                children: [
                  TextSpan(
                    text: 'الشروط والأحكام الخاصة بنا',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                    recognizer: _termsTapRecognizer,
                  ),
                ],
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
