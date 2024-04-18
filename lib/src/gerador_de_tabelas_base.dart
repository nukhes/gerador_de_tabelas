class Table {
  

  String mapTable(Map value, int firstColumnWidth, int secondColumnWidth) {
    // separator
    String line = "-" * (firstColumnWidth + secondColumnWidth + 3) + "\n";

    // table top
    String res = line;

    // generate each row
    value.forEach((key, value) {
      int firstLeftWidth = firstColumnWidth - key.toString().length - 1;
      int secondLeftWidth = secondColumnWidth - value.toString().length - 1;

      String space01 = " " * firstLeftWidth;
      String space02 = " " * secondLeftWidth;

      res += "| $key$space01| $value$space02|\n";
    });

    // table bottom
    res += line;
    return res;
  }

}