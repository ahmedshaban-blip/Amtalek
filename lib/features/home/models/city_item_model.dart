/// Data model representing a city discovery card.
class CityItemModel {
  final String id;
  final String name;
  final int forSaleCount;
  final int forRentCount;
  final String image;

  const CityItemModel({
    required this.id,
    required this.name,
    required this.forSaleCount,
    required this.forRentCount,
    required this.image,
  });
}

