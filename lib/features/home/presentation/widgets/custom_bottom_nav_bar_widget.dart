import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_shadows.dart';
import '../../../../core/theme/app_sizes.dart';
import 'bottom_nav_item_widget.dart';
import 'floating_home_button_widget.dart';

/// Custom bottom navigation bar with elevated center home button.
class CustomBottomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int>? onItemSelected;

  const CustomBottomNavBarWidget({
    super.key,
    this.selectedIndex = 2,
    this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        boxShadow: AppShadows.floatingNavShadow,
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: AppSizes.bottomNavHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItemWidget(
                iconAsset: AppAssets.navDevelopersIcon,
                label: AppStrings.navDevelopers,
                isSelected: selectedIndex == 0,
                onTap: () => onItemSelected?.call(0),
              ),
              BottomNavItemWidget(
                iconAsset: AppAssets.navMarketIcon,
                label: AppStrings.navMarket,
                isSelected: selectedIndex == 1,
                onTap: () => onItemSelected?.call(1),
              ),
              FloatingHomeButtonWidget(
                onTap: () => onItemSelected?.call(2),
              ),
              BottomNavItemWidget(
                iconAsset: AppAssets.navOffersIcon,
                label: AppStrings.navOffers,
                isSelected: selectedIndex == 3,
                onTap: () => onItemSelected?.call(3),
              ),
              BottomNavItemWidget(
                iconAsset: AppAssets.navMyPropertiesIcon,
                label: AppStrings.navMyProperties,
                isSelected: selectedIndex == 4,
                onTap: () => onItemSelected?.call(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
