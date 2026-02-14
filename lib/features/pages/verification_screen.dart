import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/pages/mobilenumber_screen.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});

  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: TextStyles.title,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryColor),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter verification code', style: TextStyles.title),
            const SizedBox(height: 7),
            Text(
              'We have sent SMS to: 01XXXXXXXXXX',
              style: TextStyles.caption2.copyWith(color: AppColors.textcolor),
            ),
            const SizedBox(height: 30),

            Center(
              child: Pinput(
                length: 5,
                controller: _pinController,
                defaultPinTheme: defaultPinTheme,
                onCompleted: (pin) {},
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend OTP',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.tangocolor,
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    pushTo(context, MobilenumberScreen());
                  },
                  child: Text(
                    'Change Phone Number',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.blackmediumcolor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 63,
              child: ElevatedButton(
                onPressed: () {},

                child: Text("Confirm", style: TextStyles.caption1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
