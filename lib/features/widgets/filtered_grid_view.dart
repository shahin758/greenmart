import 'package:flutter/material.dart';
import 'package:greenmart/features/data/product_model.dart';
import 'package:greenmart/features/widgets/item_card.dart';

class FilteredGridView extends StatelessWidget {
  const FilteredGridView({  super.key, required this.products,});

  final List<ProductModel>products;
  
  

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        return ItemCard(model: products[index]);
      },
      itemCount: products.length,
    );
  }
}
