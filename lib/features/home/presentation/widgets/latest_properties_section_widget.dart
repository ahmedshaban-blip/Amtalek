import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/carousel_dots_indicator.dart';
import '../../../../core/shared_widgets/section_header_widget.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../models/property_item_model.dart';
import '../pages/all_properties_page.dart';
import 'horizontal_property_card_widget.dart';

/// Reusable horizontal property carousel section with header and dots.
class LatestPropertiesSectionWidget extends StatelessWidget {
  final String title;
  final List<PropertyItemModel> properties;

  const LatestPropertiesSectionWidget({
    super.key,
    required this.title,
    required this.properties,
  });

  void _openAllProperties(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => AllPropertiesPage(
          title: title,
          properties: properties,
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
          title: title,
          onViewAllTap: () => _openAllProperties(context),
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: AppSizes.horizontalCardHeight,
          child: ListView.separated(
            padding: AppSpacing.pagePadding,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: properties.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              return HorizontalPropertyCardWidget(property: properties[index]);
            },
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        const CarouselDotsIndicator(count: 4, activeIndex: 0),
      ],
    );
  }
}
