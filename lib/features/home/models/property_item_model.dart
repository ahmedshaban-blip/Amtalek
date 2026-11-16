import '../../../core/constants/app_strings.dart';

/// Data model representing a property listing.
class PropertyItemModel {
  final String id;
  final String title;
  final String price;
  final String currency;
  final String image;
  final String location;
  final int bedrooms;
  final int bathrooms;
  final int areaSquareMeters;
  final String? areaText;
  final String typeTag;
  final bool isFeatured;
  final bool isFavorite;
  final String timeAgo;

  const PropertyItemModel({
    required this.id,
    required this.title,
    required this.price,
    this.currency = AppStrings.currencyEgp,
    required this.image,
    required this.location,
    required this.bedrooms,
    required this.bathrooms,
    required this.areaSquareMeters,
    this.areaText,
    this.typeTag = AppStrings.tabForSale,
    this.isFeatured = true,
    this.isFavorite = true,
    this.timeAgo = AppStrings.daysAgo,
  });
}
