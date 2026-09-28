import 'package:flutter/material.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/widget/CustomTextFormField.dart';
import 'package:fruits_hub/features/auth/presentation/views/widget/terms_and_conditions.dart';

import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/have_ordont_have_an_acount_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const CustomTextFormField(
            hintText: 'الاسم كامل',
            textInputType: TextInputType.name,
          ),
          const SizedBox(height: 16),

          const CustomTextFormField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),

          const CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
          ),
          const SizedBox(height: 16),
          const TermsAndConditionsWidget(),
          const SizedBox(height: 30),
          CustomButton(title: 'إنشاء حساب', onPressed: () {}),
          const SizedBox(height: 26),
          HaveOrDontHaveAnAccountWidget(
            title: 'تمتلك حساب بالفعل؟',
            title2: 'تسجيل الدخول',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
