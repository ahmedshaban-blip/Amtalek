import 'package:flutter/material.dart';
import '../../../../core/shared_widgets/favorite_button_widget.dart';
import '../../../../core/shared_widgets/property_broker_footer_widget.dart';
import '../../../../core/shared_widgets/property_specs_row_widget.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_shadows.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../models/property_item_model.dart';
import 'horizontal_property_image_widget.dart';

/// Reusable horizontal property card for apartments, villas, and duplexes.
class HorizontalPropertyCardWidget extends StatelessWidget {
  final PropertyItemModel property;
  final VoidCallback? onTap;
  final double? width;

  const HorizontalPropertyCardWidget({
    super.key,
    required this.property,
    this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.roundedLg,
      child: Container(
        width: width ?? AppSizes.horizontalCardWidth,
        height: AppSizes.horizontalCardHeight,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadius.roundedLg,
          border: Border.all(color: AppColors.border),
          boxShadow: AppShadows.softShadow,
        ),
        child: Row(
          children: [
            HorizontalPropertyImageWidget(
              imagePath: property.image,
              typeTag: property.typeTag,
            ),
            Expanded(
              child: Padding(
                padding: AppSpacing.compactCardPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '${property.price} ${property.currency}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.titleMedium,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        FavoriteButtonWidget(isFavorite: property.isFavorite),
                      ],
                    ),
                    Text(
                      property.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    PropertySpecsRowWidget(
                      bedrooms: property.bedrooms,
                      bathrooms: property.bathrooms,
                      areaSquareMeters: property.areaSquareMeters,
                      areaText: property.areaText,
                    ),
                    PropertyBrokerFooterWidget(
                      location: property.location,
                      timeAgo: property.timeAgo,
                      isCompact: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
