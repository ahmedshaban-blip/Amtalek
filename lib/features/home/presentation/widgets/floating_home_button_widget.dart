import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_shadows.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';

/// Elevated circular home button in the center of the bottom navigation bar.
class FloatingHomeButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const FloatingHomeButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, AppSizes.floatingHomeOffset),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: AppSizes.floatingHomeButtonSize,
          height: AppSizes.floatingHomeButtonSize,
          decoration:  BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.surface,
              width: AppSpacing.xs,
            ),
            boxShadow: AppShadows.cardShadow,
          ),
          alignment: Alignment.center,
          child: Image.asset(
            AppAssets.homeIcon,
            width: AppSizes.iconXl,
            height: AppSizes.iconXl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
