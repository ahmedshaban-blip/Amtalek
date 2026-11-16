import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/carousel_dots_indicator.dart';
import '../../../../core/shared_widgets/promo_banner_widget.dart';
import '../../../../core/theme/app_spacing.dart';

/// Middle promo banner highlighting modern office spaces.
class OfficePromoBannerSectionWidget extends StatelessWidget {
  const OfficePromoBannerSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PromoBannerWidget(
          imagePath: AppAssets.officeBanner,
          title: AppStrings.officeTitle,
          subtitle: AppStrings.officeSubtitle,
          badgeText: null,
          showArrows: false,
        ),
        SizedBox(height: AppSpacing.sm),
        CarouselDotsIndicator(
          count: 3,
          activeIndex: 0,
        ),
      ],
    );
  }
}

