import 'package:gerador_de_tabelas/gerador_de_tabelas.dart';
import 'package:test/test.dart';

void main() {
  test("map", () {

    Table createTable = Table();
    const myData = { 
    "name": "cleide", 
    "email": "cleide@xyz.com",
    "pass": "2345678hour",
    "age": "99"
    };
    print(createTable.mapTable(myData, 8, 25));

  });

    test("array", () {

    Table createTable = Table();
    List myData = [
      ["title"],
      ["LINE"],
      ["name", "01", "02", "03"],
      ["pedro", "A", "B", "C"],
      ["rafa", "X", "Y", "Zeeeee"],
      ["LINE"],
      ["19-10-2007", "sus"],
    ];
    print(createTable.arrayTable(myData, 70));

  });
}
