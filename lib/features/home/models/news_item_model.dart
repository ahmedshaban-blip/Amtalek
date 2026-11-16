/// Data model representing a news or article card.
class NewsItemModel {
  final String id;
  final String title;
  final String snippet;
  final String image;

  const NewsItemModel({
    required this.id,
    required this.title,
    required this.snippet,
    required this.image,
  });
}

