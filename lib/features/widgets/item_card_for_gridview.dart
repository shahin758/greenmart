import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/data/product_model.dart';
//import 'package:greenmart/features/details/page/product_details_screen.dart';
import 'package:greenmart/features/pages/home_screen.dart';
import 'package:greenmart/features/search/page/search_screen.dart';

class ItemCardForGridview extends StatelessWidget {
  const ItemCardForGridview({super.key, required this.product});

  final AllProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, SearchScreen());
      },
      child: Container(
        width: 300,

        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.cartcolorborder),
          boxShadow: [
            BoxShadow(
              color: Color(0xffE6EBF3).withValues(alpha: 0.5),
              offset: Offset(0, 6),
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                
                child: Center(
                  child: Image.network(product.image, fit: BoxFit.cover),
                ),
              ),

              SizedBox(height: 5),
              Center(
                child: Text(
                  product.name,
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
