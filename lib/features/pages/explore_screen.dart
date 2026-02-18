import 'package:flutter/material.dart';
import 'package:greenmart/core/widgets/custome_text_form_field.dart';
import 'package:greenmart/features/data/product_model.dart';

import 'package:greenmart/features/widgets/item_card_for_gridview.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final focusNode = FocusNode();
  String searchKey = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find Products')),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomeTextFormField(
              hintText: 'Search Store',
              prefixIcon: Icon(Icons.search),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  return ItemCardForGridview(product: allproducts[index]);
                },
                itemCount: allproducts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
