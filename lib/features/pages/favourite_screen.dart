import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/mian_button.dart';

import 'package:greenmart/features/pages/cart_screen.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite", style: TextStyles.subtitle),
        backgroundColor: AppColors.backgroundcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Image.asset(AppImages.sprit),
                title: Text("Sprite Can", style: TextStyles.subtitle),
                subtitle: Text("325ml, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$1.50',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),
                onTap: () {},
              ),
              SizedBox(height: 10),
              const Divider(height: 0, thickness: 2, color: AppColors.divider),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset(AppImages.cocacola1),
                onTap: () {},
                title: Text("Diet Coke", style: TextStyles.subtitle),
                subtitle: Text("355ml, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$1.99',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),
              ),

              SizedBox(height: 10),
              const Divider(height: 0, thickness: 2, color: AppColors.divider),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset(AppImages.cocacola2),
                title: Text("Coca-Cola Can", style: TextStyles.subtitle),
                subtitle: Text("355ml, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$1.75',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),
                onTap: () {},
              ),
              SizedBox(height: 10),
              const Divider(height: 0, thickness: 2, color: AppColors.divider),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset(AppImages.juice),
                title: Text("Apple  Juice", style: TextStyles.subtitle),
                subtitle: Text("2L, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$15.50',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),

                onTap: () {},
              ),
              SizedBox(height: 10),
              const Divider(height: 0, thickness: 2, color: AppColors.divider),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset(AppImages.pepsi),
                title: Text("Pepsi Can", style: TextStyles.subtitle),
                subtitle: Text("330ml, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$4.99',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),
                onTap: () {},
              ),

              SizedBox(height: 10),
              const Divider(height: 0, thickness: 2, color: AppColors.divider),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset(AppImages.mango),
                title: Text("Mango", style: TextStyles.subtitle),
                subtitle: Text("1kg, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$9.50',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),
                onTap: () {},
              ),
              SizedBox(height: 10),
              const Divider(height: 0, thickness: 2, color: AppColors.divider),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset(AppImages.pepper),
                title: Text("Pepper", style: TextStyles.subtitle),
                subtitle: Text("1kg, Price", style: TextStyles.caption1),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$10.50',
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(AppImages.back),
                  ],
                ),
                onTap: () {},
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: MianButton(
                  text: 'Add All To Cart',
                  onPressed: () {
                    pushTo(context, CartScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
