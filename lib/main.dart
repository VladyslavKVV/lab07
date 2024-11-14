import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoundedCornersDemo(),
    );
  }
}

class RoundedCornersDemo extends StatefulWidget {
  @override
  _RoundedCornersDemoState createState() => _RoundedCornersDemoState();
}

class _RoundedCornersDemoState extends State<RoundedCornersDemo> {
  double _topLeftRadius = 0.0;
  double _topRightRadius = 0.0;
  double _bottomLeftRadius = 0.0;
  double _bottomRightRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurable Top-Left Corner Radius'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_topLeftRadius),
                topRight: Radius.circular(_topRightRadius),
                bottomLeft: Radius.circular(_bottomLeftRadius),
                bottomRight: Radius.circular(_bottomRightRadius),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Верхній лівий кут: ${_topLeftRadius.toStringAsFixed(1)}',
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _topLeftRadius,
            min: 0,
            max: 75,
            onChanged: (newRadius) {
              setState(() {
                _topLeftRadius = newRadius;
              });
            },
          ),
          Text(
            'Верхній правий кут: ${_topRightRadius.toStringAsFixed(1)}',
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _topRightRadius,
            min: 0,
            max: 75,
            onChanged: (newRadius) {
              setState(() {
                _topRightRadius = newRadius;
              });
            },
          ),
          Text(
            'Нижній лівий кут: ${_bottomLeftRadius.toStringAsFixed(1)}',
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _bottomLeftRadius,
            min: 0,
            max: 75,
            onChanged: (newRadius) {
              setState(() {
                _bottomLeftRadius = newRadius;
              });
            },
          ),
          Text(
            'Нижній правий кут: ${_bottomRightRadius.toStringAsFixed(1)}',
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _bottomRightRadius,
            min: 0,
            max: 75,
            onChanged: (newRadius) {
              setState(() {
                _bottomRightRadius = newRadius;
              });
            },
          ),
        ],
      ),
    );
  }
}
