import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import 'widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'loginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulidAppBar(context, title: 'تسجيل دخول'),
      body: LoginViewBody(),
    );
  }
}
