class Table {

  String mapTable(Map value, int firstColumnWidth, int secondColumnWidth) {
    // separator
    String line = "${"-" * (firstColumnWidth + secondColumnWidth + 3)}\n";

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

  String arrayTable(List value, int width) {
    // separator
    String line = "+${"-" * (width - 2)}+";
    String res = "$line\n";

    // generate each row
    for (int row = 0; row < value.length; row++) {

      // render each row element
      for (int element = 0; element < value[row].length; element++) {

        // if the element is a LINE (separator), render as a line;
        if (value[row][element] == "LINE") {
          res += line;
        } else {
          int elementLength =value[row][element].length;
          num rowElementWidth = ((width/value[row].length).toInt()/2) - elementLength;
          res += "| ${value[row][element].toString()}${" "*(rowElementWidth.toInt())}";
        }
        
      }

      res += "\n";
    }

    res += "$line\n";

    return res;
  }

}