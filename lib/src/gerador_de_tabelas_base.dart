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
    String line = "+${"-" * (width - 2)}+";
    String res = "$line\n";

    // generate each row
    for (int row = 0; row < value.length; row++) {

      int rowCharLength = width;

      // render each row element
      for (int element = 0; element < value[row].length; element++) {
        int elementLength =value[row][element].length;
        String ElementText = value[row][element].toString();
        int rowElementWidth = (((width/value[row].length).toInt()/2) - elementLength).toInt();

        rowCharLength -= ElementText.length;

        // if the element is a LINE (separator), render as a line;
        if (value[row][element] == "LINE") {
          res += line;
        } else { // else render as a normal row
          // if this is the last element
          if (value[row][element] == value[row][value[row].length-1]) {
            res += "| $ElementText${" "*(rowCharLength)}|";
          } else {
            res += "| $ElementText${" "*(rowElementWidth)}";
            
          }
        }

        
      }

      res += "\n";
    }

    res += "$line\n";

    return res;
  }

}