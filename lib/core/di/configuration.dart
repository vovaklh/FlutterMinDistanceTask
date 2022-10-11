import 'package:injectable/injectable.dart';
import 'package:shortest_way_task/core/di/configuration.config.dart';
import 'package:shortest_way_task/core/di/locator.dart';

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $configureDependencies(locator);
