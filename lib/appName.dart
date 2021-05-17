import 'package:floor/floor.dart';
@entity
class AppName {
  @PrimaryKey(autoGenerate : true)
   int id;
   String name;
  AppName(this.id, this.name);
}