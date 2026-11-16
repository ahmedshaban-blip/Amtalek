import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Reusable filter tabs (الكل | للبيع | للإيجار).
class FilterTabsWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int>? onTabSelected;

  const FilterTabsWidget({
    super.key,
    this.selectedIndex = 0,
    this.onTabSelected,
  });

  static const List<String> _tabs = [
    AppStrings.tabAll,
    AppStrings.tabForSale,
    AppStrings.tabForRent,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.pagePadding,
      child: Row(
        children: List.generate(_tabs.length * 2 - 1, (index) {
          if (index.isOdd) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
              child: Text(
                '|',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.border,
                ),
              ),
            );
          }
          final tabIndex = index ~/ 2;
          final isSelected = tabIndex == selectedIndex;
          return Material(
            color: isSelected ? AppColors.primaryLight : Colors.transparent,
            borderRadius: AppRadius.roundedSm,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => onTabSelected?.call(tabIndex),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.xs,
                ),
                child: Text(
                  _tabs[tabIndex],
                  style: AppTypography.bodyLarge.copyWith(
                    color: isSelected
                        ? AppColors.primary
                        : AppColors.textSecondary,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

