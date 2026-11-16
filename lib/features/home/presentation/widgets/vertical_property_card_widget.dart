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
import 'vertical_card_image_banner_widget.dart';

/// Vertical property card matching the exact design specification.
class VerticalPropertyCardWidget extends StatelessWidget {
  final PropertyItemModel property;
  final VoidCallback? onTap;

  const VerticalPropertyCardWidget({
    super.key,
    required this.property,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cardRadius = BorderRadius.circular(AppRadius.xl);
    return Container(
      width: AppSizes.verticalCardWidth,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: cardRadius,
        boxShadow: AppShadows.softShadow,
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: cardRadius,
        border: Border.all(
          color: AppColors.featuredBorder,
          width: 1.0,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: cardRadius,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalCardImageBannerWidget(
                imagePath: property.image,
                typeTag: property.typeTag,
                isFeatured: property.isFeatured,
              ),
              Expanded(
                child: Padding(
                  padding: AppSpacing.cardPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: property.price,
                                    style: AppTypography.titleLarge.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${property.currency}',
                                    style: AppTypography.bodyMedium.copyWith(
                                      color: AppColors.textSecondary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.xs),
                          FavoriteButtonWidget(isFavorite: property.isFavorite),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        property.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      PropertySpecsRowWidget(
                        bedrooms: property.bedrooms,
                        bathrooms: property.bathrooms,
                        areaSquareMeters: property.areaSquareMeters,
                        areaText: property.areaText,
                        textStyle: AppTypography.bodyMedium.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      PropertyBrokerFooterWidget(
                        location: property.location,
                        timeAgo: property.timeAgo,
                        boldLocation: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
