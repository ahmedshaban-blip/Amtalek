import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart';
import '../theme/app_spacing.dart';

/// Reusable favorite toggle button for property cards.
class FavoriteButtonWidget extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback? onTap;

  const FavoriteButtonWidget({
    super.key,
    this.isFavorite = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.xs),
          child: Icon(
            isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            size: AppSizes.iconMd,
            color: isFavorite ? AppColors.accentRed : AppColors.textMuted,
          ),
        ),
      ),
    );
  }
}

