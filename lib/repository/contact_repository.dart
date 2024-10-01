import 'package:contatize/model/contact.dart';
import 'package:contatize/repository/db_helper.dart';

class ContactRepository {
  static const _tableName = 'contacts';

  static Future<int> insert(Map<String, Object?> map) async {
    final db = await DBHelper.getInstancia();
    return await db.insert(_tableName, map);
  }

  static Future<List<Contact>> findAll() async {
    final db = await DBHelper.getInstancia();
    final result = await db.query(_tableName);
    return result.map((item) => Contact.fromMap(item)).toList();
  }
}
