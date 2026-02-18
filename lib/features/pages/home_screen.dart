import 'package:flutter/material.dart';

import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/colors.dart';

import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/core/widgets/custome_text_form_field.dart';
import 'package:greenmart/features/search/page/search_screen.dart';
import 'package:greenmart/features/widgets/best_selling.dart';
import 'package:greenmart/features/widgets/offers_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSvgPicture(
          path: AppImages.logosvg,
          width: 250,

          color: AppColors.primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Hero(
                tag: "search",

                child: Material(
                  color: Colors.transparent,
                  child: CustomeTextFormField(
                    hintText: "Search for products...",
                    readOnly: true,
                    onTap: (){
                      pushTo(context, SearchScreen());
                    },
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              OffersBuilder(),
              SizedBox(height: 5),
              BestSellingBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
