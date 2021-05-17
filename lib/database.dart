import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:yat_flutter_final_project/appDao.dart';
import 'package:yat_flutter_final_project/appName.dart';
part 'database.g.dart';
@Database(version: 1, entities: [AppName])
abstract class AppDatabase extends FloorDatabase {
  AppNameDao get appDao;
}