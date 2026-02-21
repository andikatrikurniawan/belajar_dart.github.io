import 'dart:mirrors';
// membatasi nama method yang bisa diakses menggunakan abstract class
abstract class DataSource{
  dynamic id(String id);
  dynamic name(String nama);
  dynamic location(String location);
  dynamic age(int age);
}
class Repository implements DataSource {
  final String db;

  Repository(this.db);
  @override
  dynamic noSuchMethod(Invocation invocation){
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $db where $column = $value";
    print(sql);
  }
}