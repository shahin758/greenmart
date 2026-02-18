import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/mian_button.dart';
import 'package:greenmart/features/pages/accept_order_screen.dart';
import 'package:greenmart/features/pages/cart_screen.dart';

void showCheckoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: AppColors.backgroundcolor,
    enableDrag: true,
    isDismissible: true,
    isScrollControlled: false,
    useSafeArea: true,
    context: context,
    builder: (context) {
      return CheckoutBottomSheet();
    },
  );
}

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text('Checkout', style: TextStyles.title),
              Spacer(),
              IconButton(
                onPressed: () {
                  pop(context, CartScreen());
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          Divider(color: AppColors.divider, thickness: 2, height: 10),
          ListTile(
            leading: Text(
              'Delivery',
              style: TextStyles.body.copyWith(color: AppColors.textcolor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.textcolor,
            ),
          ),
          Divider(color: AppColors.divider, thickness: 2, height: 10),
          ListTile(
            leading: Text(
              'Payment',
              style: TextStyles.body.copyWith(color: AppColors.textcolor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.textcolor,
            ),
          ),
          Divider(color: AppColors.divider, thickness: 2, height: 10),
          ListTile(
            leading: Text(
              'Promo Code',
              style: TextStyles.body.copyWith(color: AppColors.textcolor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.textcolor,
            ),
          ),
          Divider(color: AppColors.divider, thickness: 2, height: 10),
          ListTile(
            leading: Text(
              'Total Cost',
              style: TextStyles.body.copyWith(color: AppColors.textcolor),
            ),
            trailing: Text(
              '\$24.50',
              style: TextStyles.subtitle.copyWith(
                color: AppColors.blackcolor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(color: AppColors.divider, thickness: 2, height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'By placing an order you agree to our Terms And Conditions',
              style: TextStyles.caption1.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          MianButton(text: 'Place Order', onPressed: () {
            pushTo(context, AcceptOrderScreen());
          }),
        ],
      ),
    );
  }
}
