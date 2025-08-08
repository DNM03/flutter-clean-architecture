import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app.dart';
import 'package:flutter_clean_architecture/app/dependency_injector.dart';
import 'package:flutter_clean_architecture/core/config/flavor_config.dart';
import 'package:flutter_clean_architecture/core/config/url_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await dotenv.load(fileName: ".env.development");
    await initServices();
    FlavorConfig(
      flavor: Flavor.development,
      values: FlavorValues(baseUrl: UrlConfig().baseUrlDevelopment),
    );
    await registerDependencies();
    runApp(const MyApp());
  } catch (e, stackTrace) {
    print('[ERROR] $e');
    print('[STACKTRACE] $stackTrace');
  }
}

Future<void> initServices() async {
  await Hive.initFlutter();
  await Hive.openBox('settings');
}

Future<void> registerDependencies() async {
  await DependencyInjector.setup();
}
