import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/pages/home_screen.dart';
import 'package:greenmart/features/pages/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                          'https://image.shutterstock.com/image-photo/happy-employee-face-man-studio-260nw-2472683451.jpg',
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Ahmeed Mohamed',
                                  style: TextStyles.subtitle,
                                ),
                                const SizedBox(width: 4),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit_outlined,
                                    size: 18,
                                    color: Colors.green.shade400,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Ahmed@gmail.com',
                              style: TextStyles.caption1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(height: 1, thickness: 1, color: AppColors.divider),
                ListTile(
                  leading: Image.asset(AppImages.ordericon),
                  title: Text("My Orders", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                SizedBox(height: 10),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                      
                ListTile(
                  leading: Image.asset(AppImages.details),
                  title: Text("My Details", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                SizedBox(height: 10),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                      
                ListTile(
                  leading: Image.asset(AppImages.details),
                  title: Text("Delivery Address", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                SizedBox(height: 10),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                ListTile(
                  leading: Image.asset(AppImages.vector),
                  title: Text("Payment Methods", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                SizedBox(height: 10),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                ListTile(
                  leading: Image.asset(AppImages.promocode),
                  title: Text("Promo Code", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                SizedBox(height: 10),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
               ListTile(
                  leading: Image.asset(AppImages.bell),
                  title: Text("Notifications", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                SizedBox(height: 10),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                ListTile(
                  leading: Image.asset(AppImages.help),
                  title: Text("Help", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                SizedBox(height: 5),
                ListTile(
                  leading: Image.asset(AppImages.about),
                  title: Text("About", style: TextStyles.subtitle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.blackcolor,
                  ),
                ),
                const Divider(height: 0, thickness: 2, color: AppColors.divider),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.accentcolor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {
                        pushReplacement(context, LoginScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.logout, color: AppColors.primaryColor),
                          const SizedBox(width: 10),
                          Text(
                            'Log Out',
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
