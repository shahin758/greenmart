import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/mian_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Image.asset(
              AppImages.welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 70,
              right: 20,
              left: 20,
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppImages.carrotsvg,
                    colorFilter: ColorFilter.mode(
                      AppColors.backgroundcolor,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'Welcome\nTo Green Mart',
                    textAlign: TextAlign.center,
                    style: TextStyles.headline.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyles.button.copyWith(
                      color: AppColors.backgroundcolor,
                    ),
                  ),
                  SizedBox(height: 35.8),
                  MianButton(text: 'Get Started', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
