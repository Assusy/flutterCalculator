import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Text(
                "$number",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 4,
                shrinkWrap: true,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(16, (index) {
                  return generateCalculator(index);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget generateCalculator(int index) {
    switch (index) {
      case 0:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 1;
                } else {
                  number = int.parse(number.toInt().toString() + "1");
                }
              });
            },
            child: Text(
              "1",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 1:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 2;
                } else {
                  number = int.parse(number.toInt().toString() + "2");
                }
              });
            },
            child: Text(
              "2",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 2:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 3;
                } else {
                  number = int.parse(number.toInt().toString() + "3");
                }
              });
            },
            child: Text(
              "3",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 3:
        return Center(
          child: FlatButton(
            onPressed: () {

            },
            child: Text(
              "x",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 4:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 4;
                } else {
                  number = int.parse(number.toInt().toString() + "4");
                }
              });
            },
            child: Text(
              "4",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 5:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 5;
                } else {
                  number = int.parse(number.toInt().toString() + "5");
                }
              });
            },
            child: Text(
              "5",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 6:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 6;
                } else {
                  number = int.parse(number.toInt().toString() + "6");
                }
              });
            },
            child: Text(
              "6",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 7:
        return Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "-",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 8:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 7;
                } else {
                  number = int.parse(number.toInt().toString() + "7");
                }
              });
            },
            child: Text(
              "7",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 9:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 8;
                } else {
                  number = int.parse(number.toInt().toString() + "8");
                }
              });
            },
            child: Text(
              "8",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 10:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 9;
                } else {
                  number = int.parse(number.toInt().toString() + "9");
                }
              });
            },
            child: Text(
              "9",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 11:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 9;
                } else {
                  number = int.parse(number.toString() + "+");
                }
              });
            },
            child: Text(
              "+",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 12:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                number = 0;
              });
            },
            child: Text(
              "AC",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 13:
        return Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                if (number == 0) {
                  number = 0;
                } else {
                  number = int.parse(number.toInt().toString() + "0");
                }
              });
            },
            child: Text(
              "0",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 14:
        return Center(
          child: FlatButton(
            onPressed: () {
            },
            child: Text(
              "/",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case 15:
        return Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "=",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
    }
  }
}
