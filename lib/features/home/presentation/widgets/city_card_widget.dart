import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../models/city_item_model.dart';

/// Card displaying city photo with property count statistics.
class CityCardWidget extends StatelessWidget {
  final CityItemModel city;
  final VoidCallback? onTap;

  const CityCardWidget({
    super.key,
    required this.city,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final statsStyle = AppTypography.bodyMedium.copyWith(
      fontFamily: 'Noto Kufi Arabic',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      height: 16.0 / 12.0,
      letterSpacing: 0.0,
      color: AppColors.textLight,
    );

    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.roundedLg,
      child: Container(
        width: AppSizes.cityCardWidth,
        height: AppSizes.cityCardHeight,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: AppRadius.roundedLg,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(city.image, fit: BoxFit.cover),
            Container(color: AppColors.overlayDark),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                child: Text(
                  city.name,
                  textAlign: TextAlign.center,
                  style: AppTypography.titleLarge.copyWith(
                    fontFamily: 'Noto Kufi Arabic',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    height: 16.0 / 16.0,
                    letterSpacing: 0.0,
                    color: AppColors.textLight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'عقارات للبيع : ${city.forSaleCount}',
                    textAlign: TextAlign.right,
                    style: statsStyle,
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  Text(
                    'عقارات للإيجار : ${city.forRentCount}',
                    textAlign: TextAlign.right,
                    style: statsStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

