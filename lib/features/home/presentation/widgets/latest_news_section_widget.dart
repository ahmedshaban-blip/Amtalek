import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/section_header_widget.dart';
import '../../../../core/theme/app_sizes.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../data/discovery_mock_data.dart';
import 'news_card_widget.dart';

/// Section displaying real estate news and market updates.
class LatestNewsSectionWidget extends StatelessWidget {
  const LatestNewsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeaderWidget(
          title: AppStrings.latestNews,
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: AppSizes.newsCardTotalHeight,
          child: ListView.separated(
            padding: AppSpacing.pagePadding,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: DiscoveryMockData.news.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              final item = DiscoveryMockData.news[index];
              return NewsCardWidget(news: item);
            },
          ),
        ),
      ],
    );
  }
}
