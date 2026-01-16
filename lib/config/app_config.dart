import '../models/sport_website.dart';

class AppConfig {
  static const String appName = 'Sport Live';
  static const String welcomeMessage = 'Chào Trương Văn Thắng';
  
  static final List<SportWebsite> websites = [
    SportWebsite(
      name: 'VTV',
      description: 'Kênh thể thao VTV5 - Chất lượng cao',
      url: 'https://vtvgo.vn/channel/vtv5-1,5.html',
      iconEmoji: '📺',
    ),
    SportWebsite(
      name: 'ThapcamTV',
      description: 'Xem bóng đá trực tiếp - Nhiều giải đấu',
      url: 'https://z.thapcam82.com/football',
      iconEmoji: '⚽',
    ),
    SportWebsite(
      name: 'RakhoiTV',
      description: 'Trực tiếp bóng đá - Chất lượng ổn định',
      url: 'https://rakhoivq.cc/',
      iconEmoji: '🏆',
    ),
  ];
}
