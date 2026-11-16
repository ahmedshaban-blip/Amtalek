import 'package:flutter_test/flutter_test.dart';
import 'package:task/core/constants/app_strings.dart';
import 'package:task/main.dart';

void main() {
  testWidgets('EmtilakApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const EmtilakApp());
    expect(find.text(AppStrings.featuredProperties), findsOneWidget);
    expect(find.text(AppStrings.topProjects), findsOneWidget);
    expect(find.text(AppStrings.searchByCity), findsOneWidget);
  });
}
