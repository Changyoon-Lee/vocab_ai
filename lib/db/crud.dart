import 'package:autovocab/db/database.dart';
import 'package:autovocab/model/vocab.dart';

class VocabTable {
  static String table = "vocab";
  static Future<VocabModel> create(VocabModel sample) async {
    var db = await SqlDataBase().database;
    int id = await db.insert(table, sample.toJson());
    return sample.insertedData(id);
  }
}
