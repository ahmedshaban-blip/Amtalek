import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import 'header_badge_button_widget.dart';

/// Top app header containing the brand logo, location, and action badges.
class AppHeaderWidget extends StatelessWidget {
  const AppHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSpacing.lg,
        right: AppSpacing.lg,
        bottom: AppSpacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AppAssets.logo,
                height: AppSizes.headerLogoHeight,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: AppSpacing.sm),
              const Text(
                AppStrings.locationCairo,
                style: AppTypography.titleMedium,
              ),
              const SizedBox(width: AppSpacing.xs),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: AppSizes.iconMd,
                color: AppColors.textPrimary,
              ),
            ],
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HeaderBadgeButtonWidget(
                assetPath: AppAssets.chatIcon,
                count: 5,
              ),
              SizedBox(width: AppSpacing.md),
              HeaderBadgeButtonWidget(
                assetPath: AppAssets.notificationIcon,
                count: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
