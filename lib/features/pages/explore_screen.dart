import 'package:flutter/material.dart';
import 'package:greenmart/core/widgets/custome_text_form_field.dart';
import 'package:greenmart/features/data/product_model.dart';
import 'package:greenmart/features/widgets/item_card.dart';

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
      appBar: AppBar(
        titleSpacing: 0,
        title: CustomeTextFormField(
          prefixIcon: Icon(Icons.search),
          hintText: "Search for products...",
          focusNode: focusNode,
          onChanged: (value) {
            setState(() {
              searchKey = value;
            });
          },
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) {
            return ItemCard(model: bestSelling[index]);
          },
          itemCount: bestSelling.length,
        ),
      ),
    );
  }
}
