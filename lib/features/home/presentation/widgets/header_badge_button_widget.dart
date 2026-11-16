import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Action icon button with an optional notification count badge at bottom corner.
class HeaderBadgeButtonWidget extends StatelessWidget {
  final String assetPath;
  final int? count;
  final VoidCallback? onTap;

  const HeaderBadgeButtonWidget({
    super.key,
    required this.assetPath,
    this.count,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.badgeDotSize),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            assetPath,
            width: AppSizes.iconXl,
            height: AppSizes.iconXl,
            fit: BoxFit.contain,
          ),
          if (count != null)
            Positioned(
              bottom: -2.0,
              right: -4.0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.xs,
                  vertical: AppSpacing.xxs,
                ),
                constraints: const BoxConstraints(
                  minWidth: AppSizes.badgeDotSize,
                  minHeight: AppSizes.badgeDotSize,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.accentRed,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '$count',
                  style: AppTypography.micro,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
