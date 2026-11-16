import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../data/property_mock_data.dart';
import 'latest_properties_section_widget.dart';

/// Section displaying the latest apartment listings.
class LatestApartmentsSectionWidget extends StatelessWidget {
  const LatestApartmentsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const LatestPropertiesSectionWidget(
      title: AppStrings.latestApartments,
      properties: PropertyMockData.apartments,
    );
  }
}
