import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/core/theme/app_colors.dart';
import 'package:task/features/home/presentation/widgets/app_header_widget.dart';

void main() {
  testWidgets('AppHeaderWidget renders chat (5) and notification (2) red badges', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AppHeaderWidget(),
        ),
      ),
    );

    for (final label in ['5', '2']) {
      final textFinder = find.text(label);
      expect(textFinder, findsOneWidget);

      final textWidget = tester.widget<Text>(textFinder);
      expect(textWidget.style?.fontSize, 11.0);
      expect(textWidget.style?.color, AppColors.textLight);

      final containerFinder = find.ancestor(
        of: textFinder,
        matching: find.byType(Container),
      );
      final container = tester.widget<Container>(containerFinder.first);
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.color, AppColors.accentRed);
      expect(decoration?.shape, BoxShape.circle);

      final size = tester.getSize(containerFinder.first);
      expect(size.width, greaterThanOrEqualTo(18.0));
      expect(size.height, greaterThanOrEqualTo(18.0));
    }
  });
}
