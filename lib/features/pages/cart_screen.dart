import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';

import 'package:greenmart/core/styles/colors.dart';

import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/mian_button.dart';
import 'package:greenmart/features/details/widget/checkout_bottom_sheet.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart", style: TextStyles.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(AppImages.pepper),
                  title: Text(
                    'Bell Pepper Red',
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text('1kg'),
                  trailing: Text(
                    '\$4.99',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.textcolor, width: 0),
                      ),
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: AppColors.textcolor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.textcolor, width: 0),
                      ),

                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Divider(height: 20),

                ListTile(
                  leading: Image.asset(AppImages.banana),
                  title: Text(
                    'Organic Bananas',
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text('12kg, Price'),
                  trailing: Text(
                    '\$3.00',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.textcolor, width: 0),
                      ),
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: AppColors.textcolor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.textcolor, width: 0),
                      ),

                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),

                Divider(height: 20),

                ListTile(
                  leading: Image.asset(AppImages.eggs),
                  title: Text(
                    'Egg Chicken Red',
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text('4pcs, Price'),
                  trailing: Text(
                    '\$1.99',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.textcolor, width: 0),
                      ),
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: AppColors.textcolor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.textcolor, width: 0),
                      ),

                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),

                Divider(height: 20),

                ListTile(
                  leading: Image.asset(AppImages.gengir),
                  title: Text(
                    'Ginger',
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text('250gm, Price'),
                  trailing: Text(
                    '\$2.99',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.blackcolor, width: 0),
                      ),
                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: AppColors.textcolor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      backgroundColor: AppColors.backgroundcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: AppColors.primaryColor, width: 0),
                      ),

                      elevation: 0,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23),
                MianButton(
                  text: 'Go to Checkout',
                  onPressed: () {
                    showCheckoutBottomSheet(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
