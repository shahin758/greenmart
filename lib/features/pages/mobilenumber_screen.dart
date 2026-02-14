import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/functions/validations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/mian_button.dart';
//import 'package:greenmart/features/pages/signup_screen.dart';
import 'package:greenmart/features/pages/verification_screen.dart';

class MobilenumberScreen extends StatefulWidget {
  const MobilenumberScreen({super.key});

  @override
  State<MobilenumberScreen> createState() => _MobilenumberScreenState();
}

final formKey = GlobalKey<FormState>(); //validation

class _MobilenumberScreenState extends State<MobilenumberScreen> {
  @override
  Widget build(BuildContext context) {
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
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter your mobile number', style: TextStyles.title),
              const SizedBox(height: 7),
              Text(
                'We need to verify you. We will send you a one time verification code.',
                style: TextStyles.caption2.copyWith(color: AppColors.textcolor),
              ),
              const SizedBox(height: 42),
              TextFormField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: '01xxxxxxxxx'),
                validator: (input) {
                  if (input!.isEmpty) {
                    return 'please enter your mobile number';
                  } else if (!isEgyptianPhone(input)) {
                    return 'please enter valid  mobile number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 47),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 331,
                    height: 63,
                    child: MianButton(
                      text: 'Next',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          pushTo(context, VerificationScreen());
                        } //
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend confirmation code (1:23)',
                    style: TextStyles.caption1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
