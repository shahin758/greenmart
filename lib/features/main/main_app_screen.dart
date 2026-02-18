import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/features/auth/pages/account_screen.dart';
import 'package:greenmart/features/pages/cart_screen.dart';
import 'package:greenmart/features/pages/explore_screen.dart';
import 'package:greenmart/features/pages/favourite_screen.dart';
import 'package:greenmart/features/pages/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
     

      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xffE6EBF3).withValues(alpha: 0.5),
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedLabelStyle: TextStyles.caption2.copyWith(
            color: AppColors.textcolor,
            height: 2,
          ),
          selectedLabelStyle: TextStyles.caption2.copyWith(
            fontWeight: FontWeight.w600,
            height: 2,
          ),
          currentIndex: currentIndex,

          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },

          elevation: 0,
          showSelectedLabels: true,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.storesvg,
                colorFilter: ColorFilter.mode(
                  AppColors.textcolor,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: CustomSvgPicture(
                path: AppImages.storesvg,
                color: AppColors.primaryColor,
              ),
              label: 'Store',
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.exploresvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.exploresvg,
                color: AppColors.primaryColor,
              ),
              label: 'Explore',
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.cartsvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.cartsvg,
                color: AppColors.primaryColor,
              ),
              label: 'cart',
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.heartsvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.heartsvg,
                color: AppColors.primaryColor,
              ),
              label: 'favorite',
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.usersvg,
                colorFilter: ColorFilter.mode(
                  AppColors.textcolor,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: CustomSvgPicture(
                path: AppImages.usersvg,
                color: AppColors.primaryColor,
              ),
              label: 'Account',
            ),
            
          ],
        ),
      ),
    );
  }
}
