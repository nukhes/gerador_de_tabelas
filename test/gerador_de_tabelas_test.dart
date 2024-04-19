import 'package:gerador_de_tabelas/gerador_de_tabelas.dart';
import 'package:test/test.dart';

void main() {
  test("basic test for the library", () {

    Table createTable = new Table();
    const myData = { 
    "name": "cleide", 
    "email": "cleide@xyz.com",
    "pass": "2345678hour",
    "age": "99"
    };
    print(createTable.mapTable(myData, 8, 25));

  });
}
