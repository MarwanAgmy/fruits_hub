import 'package:flutter/material.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widget/CustomTextFormField.dart';
import 'package:fruits_hub/core/widget/custom_button.dart';
import 'package:fruits_hub/core/widget/or_diveder.dart';
import 'package:fruits_hub/core/widget/social_login_button.dart';

import '../../../../../core/widget/have_ordont_have_an_acount_widget.dart';
import '../sign_up_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(onPressed: () {}, title: 'تسجيل دخول'),
            const SizedBox(height: 33),
            HaveOrDontHaveAnAccountWidget(
              title: 'لا تمتلك حساب؟',
              title2: 'قم بإنشاء حساب ',
              onTap: () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            ),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة أبل',
              image: Assets.imagesApplIcon,
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}
