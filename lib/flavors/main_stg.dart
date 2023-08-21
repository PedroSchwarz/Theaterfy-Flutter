import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:theaterfy/app.dart';
import 'package:theaterfy/main_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env.stg');
  await MainInjection.initAppDependencies();
  runApp(const App());
}
