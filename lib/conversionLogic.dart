import 'package:flutter/material.dart';

class ConvertScreen extends StatefulWidget {
  @override
  convertScreenState createState() => convertScreenState();
}

// ignore: camel_case_types
class convertScreenState extends State<ConvertScreen> {

  double num1;
  double num2 = 0.6124;
  double ans = 0;

 void  _miles() {
    setState(() {
      ans = num1 * num2;
    });
  }

 void  _kilometers() {
    setState(() {
      ans = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convert Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(        //alt + enter shortcut to wrap
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter first value",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)))
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  num1 = double.parse(value);
                },),
            ),

            Text('Converted unit: $ans'),

            RaisedButton(
                onPressed: _kilometers,
                child: Text('Convert to kilometers')
            ),
            RaisedButton(
                onPressed: _miles,
                child: Text('Convert to miles')
            )
          ],
        ),
      ),
    );
  }
}