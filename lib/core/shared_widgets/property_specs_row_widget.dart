import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Reusable property specifications row showing beds, baths, and area.
class PropertySpecsRowWidget extends StatelessWidget {
  final int bedrooms;
  final int bathrooms;
  final int areaSquareMeters;
  final String? areaText;
  final TextStyle? textStyle;

  const PropertySpecsRowWidget({
    super.key,
    required this.bedrooms,
    required this.bathrooms,
    required this.areaSquareMeters,
    this.areaText,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildItem(
          icon: Icons.king_bed_outlined,
          label: '$bedrooms',
        ),
        const Spacer(),
        _buildItem(
          icon: Icons.bathtub_outlined,
          label: '$bathrooms',
        ),
        const Spacer(),
        _buildItem(
          icon: Icons.crop_free_rounded,
          label: areaText ?? '$areaSquareMeters\u0645\u00B2',
        ),
      ],
    );
  }

  Widget _buildItem({required IconData icon, required String label}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: AppSizes.iconSm,
          color: AppColors.textPrimary,
        ),
        const SizedBox(width: AppSpacing.xs),
        Text(
          label,
          style: textStyle ??
              AppTypography.bodySmall.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
