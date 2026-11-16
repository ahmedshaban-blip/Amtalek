import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/section_header_widget.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../data/discovery_mock_data.dart';
import 'project_card_widget.dart';

/// Section displaying top real estate projects in Egypt.
class TopProjectsSectionWidget extends StatelessWidget {
  const TopProjectsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeaderWidget(
          title: AppStrings.topProjects,
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: AppSizes.verticalCardTotalHeight,
          child: ListView.separated(
            padding: AppSpacing.pagePadding,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: DiscoveryMockData.projects.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              final project = DiscoveryMockData.projects[index];
              return ProjectCardWidget(project: project);
            },
          ),
        ),
      ],
    );
  }
}
