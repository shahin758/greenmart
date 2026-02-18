import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widgets/custome_text_form_field.dart';
import 'package:greenmart/core/widgets/mian_button.dart';
import 'package:greenmart/core/widgets/password_text_form_field.dart';
import 'package:greenmart/features/pages/login_screen.dart';
import 'package:greenmart/features/auth/pages/mobilenumber_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [SvgPicture.asset(AppImages.carrotsvg)],
                    ),
                    const SizedBox(height: 40),
                    Text('Sign UP', style: TextStyles.title),
                    const SizedBox(height: 16),
                    Text(
                      'Enter your credentials to continue',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.textcolor,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      'Name',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.textcolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 7),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    ),

                    const SizedBox(height: 10),
                    Text(
                      'Email',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.textcolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 7),
                    CustomeTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'example@gmail.com',
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Password',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.textcolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 7),
                    PasswordTextFormField(hintText: '********'),
                    const SizedBox(height: 20),
                    MianButton(
                      text: 'Sign UP',
                      onPressed: () {
                        //if (formKey.currentState!.validate()) {}
                        pushTo(context, MobilenumberScreen());
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
                                text: 'Already have an account?',
                                style: TextStyles.caption1,
                              ),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,

                                child: TextButton(
                                  onPressed: () {
                                    pushTo(context, LoginScreen());
                                  },

                                  child: Text(
                                    'Login',
                                    style: TextStyles.caption1.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
