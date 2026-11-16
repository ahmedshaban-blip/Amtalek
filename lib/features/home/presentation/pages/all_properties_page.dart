import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/shared_widgets/filter_tabs_widget.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../models/property_item_model.dart';
import '../widgets/horizontal_property_card_widget.dart';

/// Full listings page opened from section "مشاهدة الكل" actions,
/// with interactive filter tabs (الكل | للبيع | للإيجار).
class AllPropertiesPage extends StatefulWidget {
  final String title;
  final List<PropertyItemModel> properties;

  const AllPropertiesPage({
    super.key,
    required this.title,
    required this.properties,
  });

  @override
  State<AllPropertiesPage> createState() => _AllPropertiesPageState();
}

class _AllPropertiesPageState extends State<AllPropertiesPage> {
  int _selectedTabIndex = 0;

  List<PropertyItemModel> get _filteredProperties {
    if (_selectedTabIndex == 1) {
      return widget.properties
          .where((item) => item.typeTag == AppStrings.tabForSale)
          .toList();
    }
    if (_selectedTabIndex == 2) {
      return widget.properties
          .where((item) => item.typeTag == AppStrings.tabForRent)
          .toList();
    }
    return widget.properties;
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredProperties;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 1,
        title: Text(
          widget.title,
          style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.surface,
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
            child: FilterTabsWidget(
              selectedIndex: _selectedTabIndex,
              onTabSelected: (index) {
                setState(() => _selectedTabIndex = index);
              },
            ),
          ),
          const Divider(height: 1, color: AppColors.borderLight),
          Expanded(
            child: filtered.isEmpty
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.home_work_outlined,
                          size: AppSpacing.huge,
                          color: AppColors.textMuted,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          'لا توجد عقارات متاحة في هذا التصنيف حالياً',
                          style: AppTypography.bodyLarge.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    physics: const BouncingScrollPhysics(),
                    itemCount: filtered.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: AppSpacing.md),
                    itemBuilder: (context, index) {
                      return HorizontalPropertyCardWidget(
                        property: filtered[index],
                        width: double.infinity,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
