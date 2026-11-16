import 'package:flutter/material.dart';
import '../theme/app_sizes.dart';
import '../theme/app_spacing.dart';

/// Navigation arrow button for banners.
class PromoBannerNavArrowWidget extends StatelessWidget {
  final Alignment alignment;
  final String assetPath;
  final VoidCallback? onTap;

  const PromoBannerNavArrowWidget({
    super.key,
    required this.alignment,
    required this.assetPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
        child: IconButton(
          icon: Image.asset(
            assetPath,
            width: AppSizes.bannerArrowSize,
            height: AppSizes.bannerArrowSize,
            fit: BoxFit.contain,
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}

