import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:theaterfy/app.dart';
import 'package:theaterfy/main_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await initializeApp();
  } catch (ex) {
    await initializeApp();
  }
  runApp(const App());
}

Future<void> initializeApp() async {
  await dotenv.load(fileName: '.env');
  await MainInjection.initAppDependencies();
}
