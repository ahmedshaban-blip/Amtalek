import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Assets can be loaded', () async {
    const assets = [
      'images/ar logo 2.png',
      'images/home_icon.png',
      'images/صورة بواسطة في عقارات مميزة.png',
      'images/hero_image.png',
      'images/صورة 1 عقارات مميزة في مصر.png',
      'images/صورة مكتب لازم يكون انيق.png',
    ];
    for (final asset in assets) {
      final data = await rootBundle.load(asset);
      expect(data.lengthInBytes, greaterThan(0));
    }
  });
}
