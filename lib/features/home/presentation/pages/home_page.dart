import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/app_header_widget.dart';
import '../widgets/custom_bottom_nav_bar_widget.dart';
import '../widgets/featured_properties_section_widget.dart';
import '../widgets/latest_apartments_section_widget.dart';
import '../widgets/latest_duplexes_section_widget.dart';
import '../widgets/latest_news_section_widget.dart';
import '../widgets/latest_villas_section_widget.dart';
import '../widgets/office_promo_banner_section_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/search_by_city_section_widget.dart';
import '../widgets/top_banner_carousel_widget.dart';
import '../widgets/top_projects_section_widget.dart';

/// Main home page assembling all decomposed sections.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: CustomBottomNavBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: AppSpacing.xs),
            AppHeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: AppSpacing.sm),
                    SearchBarWidget(),
                    SizedBox(height: AppSpacing.md),
                    TopBannerCarouselWidget(),
                    SizedBox(height: AppSpacing.lg),
                    FeaturedPropertiesSectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    TopProjectsSectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    SearchByCitySectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    OfficePromoBannerSectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    LatestApartmentsSectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    LatestVillasSectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    LatestDuplexesSectionWidget(),
                    SizedBox(height: AppSpacing.lg),
                    LatestNewsSectionWidget(),
                    SizedBox(height: AppSpacing.xxxl),
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

