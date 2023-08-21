import 'package:core_shared/core_shared.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainInjection {
  static Future<void> initAppDependencies() async {
    await CoreInjection.initCoreDependencies(
      () {},
      baseUrl: dotenv.get('BASE_URL'),
      apiKey: dotenv.get('API_KEY'),
    );
  }
}
