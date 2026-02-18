import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/data/product_model.dart';
import 'package:greenmart/features/details/page/product_details_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});

  final ProductModel model;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailsScreen(model: model));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.accentcolor),
          boxShadow: [
            BoxShadow(
              color: Color(0xffE6EBF3).withValues(alpha: 0.5),
              offset: Offset(0, 5),
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
                  child: Hero(
                    tag: model.tagKey,
                    child: Image.network(model.image),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                model.name,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              Text(
                model.weight,
                style: TextStyles.caption1.copyWith(color: AppColors.textcolor),
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${model.price.toStringAsFixed(2)}',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add, color: AppColors.backgroundcolor),
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
