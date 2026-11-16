import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '../constants/app_strings.dart';
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import 'promo_banner_cta_button_widget.dart';
import 'promo_banner_nav_arrow_widget.dart';

/// Reusable promotional hero banner with image background, text, and CTA.
class PromoBannerWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String? badgeText;
  final String buttonText;
  final bool showArrows;
  final VoidCallback? onCtaTap;
  final VoidCallback? onPrevTap;
  final VoidCallback? onNextTap;

  const PromoBannerWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.badgeText = AppStrings.whatsAppAvailable,
    this.buttonText = AppStrings.contactNow,
    this.showArrows = true,
    this.onCtaTap,
    this.onPrevTap,
    this.onNextTap,
  });

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);

    return SizedBox(
      width: double.infinity,
      height: AppSizes.bannerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Container(color: AppColors.overlayDark),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              children: [
                if (showArrows)
                  PromoBannerNavArrowWidget(
                    alignment: Alignment.centerLeft,
                    assetPath: AppAssets.leftCarouselArrow,
                    onTap: onPrevTap,
                  ),
                Expanded(
                  child: Directionality(
                    textDirection: textDirection,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: showArrows ? AppSpacing.xs : AppSpacing.lg,
                        vertical: AppSpacing.md,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: AppTypography.displayMedium.copyWith(
                              color: AppColors.textLight,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            subtitle,
                            textAlign: TextAlign.center,
                            style: AppTypography.bodyLarge.copyWith(
                              color: AppColors.textLight,
                            ),
                          ),
                          if (badgeText != null) ...[
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              badgeText!,
                              style: AppTypography.caption.copyWith(
                                color: AppColors.accentYellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          const SizedBox(height: AppSpacing.md),
                          PromoBannerCtaButtonWidget(
                            text: buttonText,
                            onTap: onCtaTap,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (showArrows)
                  PromoBannerNavArrowWidget(
                    alignment: Alignment.centerRight,
                    assetPath: AppAssets.rightCarouselArrow,
                    onTap: onNextTap,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
