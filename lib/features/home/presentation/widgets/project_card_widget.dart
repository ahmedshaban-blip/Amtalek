import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/favorite_button_widget.dart';
import '../../../../core/shared_widgets/property_broker_footer_widget.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_shadows.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../models/project_item_model.dart';

/// Card displaying real estate compounds and developments.
class ProjectCardWidget extends StatelessWidget {
  final ProjectItemModel project;
  final VoidCallback? onTap;

  const ProjectCardWidget({super.key, required this.project, this.onTap});

  @override
  Widget build(BuildContext context) {
    final cardRadius = BorderRadius.circular(AppRadius.xl);
    return Container(
      width: AppSizes.verticalCardWidth,
      height: AppSizes.verticalCardTotalHeight,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: cardRadius,
        boxShadow: AppShadows.softShadow,
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: cardRadius,
        border: Border.all(
          color: AppColors.projectBorder,
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
              _ProjectCardImageBanner(imagePath: project.image),
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
                            child: Text(
                              project.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.titleLarge.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          FavoriteButtonWidget(isFavorite: project.isFavorite),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        project.description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const Spacer(),
                      PropertyBrokerFooterWidget(
                        location: project.location,
                        timeAgo: project.timeAgo,
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

class _ProjectCardImageBanner extends StatelessWidget {
  final String imagePath;

  const _ProjectCardImageBanner({required this.imagePath});

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
        Positioned.directional(
          textDirection: textDirection,
          bottom: AppSpacing.md,
          start: AppSpacing.zero,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.xs,
            ),
            decoration: const BoxDecoration(
              color: AppColors.accentGreen,
              borderRadius: BorderRadiusDirectional.horizontal(
                end: Radius.circular(AppRadius.circular),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.apartment_rounded,
                  size: AppSizes.iconSm,
                  color: AppColors.textLight,
                ),
                const SizedBox(width: AppSpacing.xs),
                Text(
                  AppStrings.projectBadge,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
