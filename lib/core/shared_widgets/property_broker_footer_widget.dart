import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '../constants/app_strings.dart';
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Reusable card footer with location, timestamp, and broker badge.
class PropertyBrokerFooterWidget extends StatelessWidget {
  final String location;
  final String timeAgo;
  final bool isCompact;
  final bool boldLocation;

  const PropertyBrokerFooterWidget({
    super.key,
    required this.location,
    this.timeAgo = AppStrings.daysAgo,
    this.isCompact = false,
    this.boldLocation = false,
  });

  @override
  Widget build(BuildContext context) {
    final locationIcon = isCompact
        ? Icons.location_on_outlined
        : Icons.location_on_rounded;
    final iconColor = isCompact ? AppColors.textMuted : AppColors.textSecondary;
    final locationStyle = isCompact
        ? AppTypography.caption.copyWith(color: AppColors.textSecondary)
        : AppTypography.bodyMedium.copyWith(
            color: AppColors.textSecondary,
            fontWeight: boldLocation ? FontWeight.w600 : null,
          );
    final timeStyle = isCompact
        ? AppTypography.caption
        : AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary);
    final authorStyle = isCompact
        ? AppTypography.caption
        : AppTypography.bodySmall.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _FooterMetaRow(
                icon: locationIcon,
                iconSize: AppSizes.iconSm,
                iconColor: iconColor,
                text: location,
                textStyle: locationStyle,
              ),
              const SizedBox(height: AppSpacing.xs),
              _FooterMetaRow(
                icon: Icons.access_time_rounded,
                iconSize: AppSizes.iconXs,
                iconColor: iconColor,
                text: timeAgo,
                textStyle: timeStyle,
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.xs),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(AppStrings.byAuthor, style: authorStyle),
            const SizedBox(height: AppSpacing.xxs),
            Image.asset(
              AppAssets.brokerGoldSquare,
              height: AppSizes.iconXl,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ],
    );
  }
}

class _FooterMetaRow extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final String text;
  final TextStyle textStyle;

  const _FooterMetaRow({
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: iconSize, color: iconColor),
        const SizedBox(width: AppSpacing.xs),
        Flexible(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
