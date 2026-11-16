import '../../../core/constants/app_strings.dart';

/// Data model representing a compound or real estate project.
class ProjectItemModel {
  final String id;
  final String name;
  final String description;
  final String image;
  final String location;
  final bool isFavorite;
  final String timeAgo;

  const ProjectItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.location,
    this.isFavorite = true,
    this.timeAgo = AppStrings.daysAgo,
  });
}

