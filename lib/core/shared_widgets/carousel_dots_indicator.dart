import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_sizes.dart';
import '../theme/app_spacing.dart';

/// Reusable carousel pagination dots indicator.
class CarouselDotsIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;

  const CarouselDotsIndicator({
    super.key,
    this.count = 3,
    this.activeIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        final isActive = index == activeIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: AppSpacing.xxs),
          width: isActive ? AppSizes.dotSize : AppSizes.dotSize,
          height: AppSizes.dotSize,
          decoration: BoxDecoration(
            color: isActive ? AppColors.activeDot : AppColors.inactiveDot,
            borderRadius: AppRadius.roundedFull,
          ),
        );
      }),
    );
  }
}

