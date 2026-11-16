import '../../../core/constants/app_assets.dart';
import '../models/property_item_model.dart';

/// Static mock listings for properties.
abstract final class PropertyMockData {
  static const List<PropertyItemModel> featured = [
    PropertyItemModel(
      id: 'p1',
      title: 'شقة سكنية للبيع تشطيب سوبر ...',
      price: '4,000,000',
      image: AppAssets.featuredProperty2,
      location: 'الشيخ زايد الجيزة',
      bedrooms: 10,
      bathrooms: 5,
      areaSquareMeters: 810,
      areaText: '8,725sqft',
      timeAgo: 'منذ 4 ايام',
    ),
    PropertyItemModel(
      id: 'p2',
      title: 'شقة سكنية للبيع تشطيب سوبر ...',
      price: '4,000,000',
      image: AppAssets.featuredProperty1,
      location: 'الشيخ زايد الجيزة',
      bedrooms: 10,
      bathrooms: 5,
      areaSquareMeters: 810,
      areaText: '8,725sqft',
      timeAgo: 'منذ 4 ايام',
    ),
  ];

  static const List<PropertyItemModel> apartments = [
    PropertyItemModel(
      id: 'apt1',
      title: 'شقة سكنية للبيع تشطيب سوبر ...',
      price: '4,000,000',
      image: AppAssets.apartment1,
      location: 'الشيخ زايد الجيزة',
      bedrooms: 10,
      bathrooms: 5,
      areaSquareMeters: 810,
      areaText: '8,725sqft',
      timeAgo: 'منذ 4 ايام',
    ),
    PropertyItemModel(
      id: 'apt2',
      title: 'شقة سكنية للبيع تشطيب سوبر ...',
      price: '3,500,000',
      image: AppAssets.apartment2,
      location: 'التجمع الخامس القاهرة',
      bedrooms: 4,
      bathrooms: 3,
      areaSquareMeters: 210,
      areaText: '2,260sqft',
      timeAgo: 'منذ 4 ايام',
    ),
  ];

  static const List<PropertyItemModel> villas = [
    PropertyItemModel(
      id: 'vil1',
      title: 'فيلا سكنية للبيع تشطيب سوبر ...',
      price: '4,000,000',
      image: AppAssets.villa1,
      location: 'الشيخ زايد الجيزة',
      bedrooms: 10,
      bathrooms: 5,
      areaSquareMeters: 810,
      areaText: '8,725sqft',
      timeAgo: 'منذ 4 ايام',
    ),
    PropertyItemModel(
      id: 'vil2',
      title: 'فيلا مستقلة للبيع تشطيب سوبر ...',
      price: '8,500,000',
      image: AppAssets.villa2,
      location: 'مدينتي القاهرة',
      bedrooms: 6,
      bathrooms: 5,
      areaSquareMeters: 450,
      areaText: '4,840sqft',
      timeAgo: 'منذ 4 ايام',
    ),
  ];

  static const List<PropertyItemModel> duplexes = [
    PropertyItemModel(
      id: 'dup1',
      title: 'دوبلكس مميز للبيع تشطيب سوبر ...',
      price: '4,000,000',
      image: AppAssets.duplex1,
      location: 'الشيخ زايد الجيزة',
      bedrooms: 10,
      bathrooms: 5,
      areaSquareMeters: 810,
      areaText: '8,725sqft',
      timeAgo: 'منذ 4 ايام',
    ),
    PropertyItemModel(
      id: 'dup2',
      title: 'دوبلكس بحديقة للبيع تشطيب سوبر ...',
      price: '5,200,000',
      image: AppAssets.duplex2,
      location: '6 أكتوبر الجيزة',
      bedrooms: 4,
      bathrooms: 3,
      areaSquareMeters: 280,
      areaText: '3,015sqft',
      timeAgo: 'منذ 4 ايام',
    ),
  ];
}

