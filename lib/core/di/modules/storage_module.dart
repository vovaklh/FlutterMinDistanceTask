import 'package:injectable/injectable.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';

@module
abstract class StorageModule {
  @lazySingleton
  @preResolve
  Future<SharedPrefs> sharedPrefs() async {
    final sharedPreferences = SharedPrefs();
    await sharedPreferences.init();

    return sharedPreferences;
  }
}
