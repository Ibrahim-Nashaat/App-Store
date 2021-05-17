import 'package:floor/floor.dart';
import 'package:yat_flutter_final_project/appName.dart';


@dao
abstract class AppNameDao {
  @Query('SELECT * FROM AppName')
  Future<List<AppName>> findAllAppName();

  @Query('SELECT * FROM AppName WHERE id = :id')
  Stream<AppName> findAppNameById(int id);

  @insert
  Future<void> insertAppName(AppName name);

  @update
  Future<void> updateAppName(AppName name);

  @delete
  Future<void> deleteAppName(AppName name);
}