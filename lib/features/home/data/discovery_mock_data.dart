import '../../../core/constants/app_assets.dart';
import '../models/city_item_model.dart';
import '../models/news_item_model.dart';
import '../models/project_item_model.dart';

/// Static mock data for projects, cities, and news.
abstract final class DiscoveryMockData {
  static const List<ProjectItemModel> projects = [
    ProjectItemModel(
      id: 'proj1',
      name: 'كمبوند الشيخ زايد',
      description: 'شقق، سكنية، فلل، وتشطيب ممتاز...',
      image: AppAssets.project1,
      location: 'الشيخ زايد، الجيزة',
    ),
    ProjectItemModel(
      id: 'proj2',
      name: 'كمبوند الشيخ زايد',
      description: 'شقق، سكنية، فلل، وتشطيب ممتاز...',
      image: AppAssets.project2,
      location: 'الشيخ زايد، الجيزة',
    ),
  ];

  static const List<CityItemModel> cities = [
    CityItemModel(
      id: 'c1',
      name: 'القاهرة',
      forSaleCount: 505,
      forRentCount: 1300,
      image: AppAssets.cityCairo,
    ),
    CityItemModel(
      id: 'c2',
      name: 'الجيزة',
      forSaleCount: 505,
      forRentCount: 1300,
      image: AppAssets.cityGiza,
    ),
  ];

  static const List<NewsItemModel> news = [
    NewsItemModel(
      id: 'n1',
      title: 'أحدث سوق إيجي',
      snippet:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،',
      image: AppAssets.news1,
    ),
    NewsItemModel(
      id: 'n2',
      title: 'أحدث سوق إيجي',
      snippet:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،',
      image: AppAssets.news2,
    ),
  ];
}

