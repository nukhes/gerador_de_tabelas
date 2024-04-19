<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Table creation library for command line programs.

## Features
- Simple and functional.
- Uses a Map-based function to render the table or an List.
- Fast.

## Usage

After importing the package in your project you need to create a instance of the class 'Table'.
```
Table createTable = new Table();
```

Done, start using  it!

### With a map (basic mode):
```
const myData = { 
"name": "cleide", 
"email": "cleide@xyz.com",
"pass": "2345678hour",
"age": "99"
};
print(createTable.mapTable(myData, 15, 25));
```

### (UNSTABLE) With a Array (advanced mode):
```
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
```