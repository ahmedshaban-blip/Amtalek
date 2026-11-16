import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Leading image with listing type badge for horizontal property cards.
class HorizontalPropertyImageWidget extends StatelessWidget {
  final String imagePath;
  final String typeTag;

  const HorizontalPropertyImageWidget({
    super.key,
    required this.imagePath,
    this.typeTag = AppStrings.tabForSale,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(AppRadius.lg),
          ),
          child: Image.asset(
            imagePath,
            width: AppSizes.horizontalCardImageWidth,
            height: AppSizes.horizontalCardHeight,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: AppSpacing.sm,
          left: AppSpacing.zero,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.xs,
            ),
            decoration: const BoxDecoration(
              color: AppColors.border,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppRadius.sm),
              ),
            ),
            child: Text(
              typeTag,
              style: AppTypography.badge.copyWith(color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
