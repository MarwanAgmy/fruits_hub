import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import 'widget/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const new({super.key});
  static const String routeName = 'sign-up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulidAppBar(context, title: 'حساب جديد'),
      body: SignUpViewBody(),
    );
  }
}
