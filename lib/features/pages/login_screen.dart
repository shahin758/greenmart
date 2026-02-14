import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/functions/validations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custome_text_form_field.dart';
import 'package:greenmart/core/widgets/mian_button.dart';
import 'package:greenmart/core/widgets/password_text_form_field.dart';
import 'package:greenmart/features/pages/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();   //validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              //FORM WIDGET
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                //WRAP THIS COLUMN WITH FORM WIDGET
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset(AppImages.carrotsvg)],
                  ),
                  const SizedBox(height: 40),
                  Text('Login', style: TextStyles.title),
                  const SizedBox(height: 16),
                  Text(
                    'Enter your email and password',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.textcolor,
                    ),
                  ),
                  const SizedBox(height: 36),
                  Text(
                    'Email',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7),
                  CustomeTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter Your Email',
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'please enter your email';
                      } else if (!isValidEmail(input)) {
                        return 'please enter valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 14),

                  Text(
                    'Password',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 7),
                  PasswordTextFormField(hintText: '********'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},

                        child: Text(
                          'Forget Password?',
                          style: TextStyles.caption1.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  MianButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account?',
                              style: TextStyles.caption1,
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,

                              child: TextButton(
                                onPressed: () {
                                  pushTo(context, SignupScreen());
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyles.caption1.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
