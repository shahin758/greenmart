import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/mian_button.dart';
import 'package:greenmart/features/pages/home_screen.dart';


class AcceptOrderScreen extends StatelessWidget {
  const AcceptOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset(AppImages.done)),
          SizedBox(height: 50),
          Text(
            'Your Order has been \n accepted',
            style: TextStyles.title,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Your items has been placcd and is on it’s way to being processed',
            textAlign: TextAlign.center,

            style: TextStyles.caption1.copyWith(color: AppColors.textcolor),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: MianButton(
              
              text: 'Go To Home',
              onPressed: () {
                pushReplacement(context, HomeScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
