import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/data/product_model.dart';
import 'package:greenmart/features/widgets/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({
    super.key,
   
  });
    
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Exclusive Offers',
              style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
            ),
            TextButton(onPressed: () {}, child: Text('See All')),
          ],
        ),
        SizedBox(
          height: 255,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = offers[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}
