import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/section_header_widget.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../data/discovery_mock_data.dart';
import 'city_card_widget.dart';

/// Section displaying search by city cards.
class SearchByCitySectionWidget extends StatelessWidget {
  const SearchByCitySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeaderWidget(
          title: AppStrings.searchByCity,
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: AppSizes.cityCardHeight,
          child: ListView.separated(
            padding: AppSpacing.pagePadding,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: DiscoveryMockData.cities.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              final city = DiscoveryMockData.cities[index];
              return CityCardWidget(city: city);
            },
          ),
        ),
      ],
    );
  }
}
