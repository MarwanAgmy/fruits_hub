import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const new({super.key});
  static const String routeName = 'onBoarding';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnBoardingViewBody());
  }
}
