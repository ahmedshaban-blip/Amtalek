import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/section_header_widget.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../data/property_mock_data.dart';
import '../pages/all_properties_page.dart';
import 'vertical_property_card_widget.dart';

/// Section displaying featured properties in a horizontal list.
class FeaturedPropertiesSectionWidget extends StatelessWidget {
  const FeaturedPropertiesSectionWidget({super.key});

  void _openAllProperties(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => const AllPropertiesPage(
          title: AppStrings.featuredProperties,
          properties: PropertyMockData.featured,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeaderWidget(
          title: AppStrings.featuredProperties,
          onViewAllTap: () => _openAllProperties(context),
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: AppSizes.verticalCardTotalHeight,
          child: ListView.separated(
            padding: AppSpacing.pagePadding,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: PropertyMockData.featured.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              return VerticalPropertyCardWidget(
                property: PropertyMockData.featured[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
