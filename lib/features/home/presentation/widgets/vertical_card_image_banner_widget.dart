import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Top image banner for vertical property cards with status badges at bottom.
class VerticalCardImageBannerWidget extends StatelessWidget {
  final String imagePath;
  final String typeTag;
  final bool isFeatured;

  const VerticalCardImageBannerWidget({
    super.key,
    required this.imagePath,
    this.typeTag = AppStrings.tabForSale,
    this.isFeatured = true,
  });

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);
    return Stack(
      children: [
        Image.asset(
          imagePath,
          height: AppSizes.verticalCardImageHeight,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            height: AppSizes.verticalCardImageHeight,
            width: double.infinity,
            color: AppColors.surfaceMuted,
            alignment: Alignment.center,
            child: const Icon(
              Icons.image_not_supported_outlined,
              color: AppColors.textMuted,
            ),
          ),
        ),
        Positioned(
          left: AppSpacing.zero,
          right: AppSpacing.zero,
          bottom: AppSpacing.zero,
          height: 44.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.30),
                ],
              ),
            ),
          ),
        ),
        Positioned.directional(
          textDirection: textDirection,
          bottom: AppSpacing.zero,
          end: AppSpacing.zero,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.xs,
            ),
            decoration: const BoxDecoration(
              color: AppColors.accentYellow,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(AppRadius.md),
              ),
            ),
            child: Text(
              typeTag,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        if (isFeatured)
          Positioned.directional(
            textDirection: textDirection,
            bottom: AppSpacing.zero,
            start: AppSpacing.zero,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.xs,
              ),
              decoration: const BoxDecoration(
                color: AppColors.accentYellow,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(AppRadius.md),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.featuredBadge,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.xs),
                  const Icon(
                    Icons.star_rounded,
                    size: AppSizes.iconSm,
                    color: AppColors.textPrimary,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
