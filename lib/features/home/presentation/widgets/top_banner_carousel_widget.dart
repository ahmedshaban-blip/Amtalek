import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/carousel_dots_indicator.dart';
import '../../../../core/shared_widgets/promo_banner_widget.dart';
import '../../../../core/theme/app_spacing.dart';

/// Hero promo banner carousel with dots indicator.
class TopBannerCarouselWidget extends StatelessWidget {
  const TopBannerCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PromoBannerWidget(
          imagePath: AppAssets.heroBanner,
          title: AppStrings.heroTitle,
          subtitle: AppStrings.heroSubtitle,
          badgeText: null,
        ),
        SizedBox(height: AppSpacing.sm),
        CarouselDotsIndicator(
          count: 4,
          activeIndex: 0,
        ),
      ],
    );
  }
}

