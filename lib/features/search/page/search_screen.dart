import 'package:flutter/material.dart';

import 'package:greenmart/core/widgets/custome_text_form_field.dart';
import 'package:greenmart/features/data/product_model.dart';
import 'package:greenmart/features/widgets/filtered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKey = '';

  @override
  void initState() {
    super.initState();
    FocusNode().requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: "search",
          child: Material(
            child: CustomeTextFormField(
              hintText: "Search for products...",
              focusNode: focusNode,
              onChanged: (value) {
                setState(() {
                  searchKey = value;
                });
               
              },
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: FilteredGridView(products: getProductByName(searchKey),),
      ),
    );
  }
}

List<ProductModel> getProductByName(String searchKey){
  List<ProductModel> filterProducts = [];
  for(var product in offers){
    if(product.name.toLowerCase().contains(searchKey.toLowerCase())){
      filterProducts.add(product);
      
    }
  }
  return filterProducts;
}
