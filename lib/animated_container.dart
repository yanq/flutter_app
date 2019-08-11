import 'dart:math';

import 'package:flutter/material.dart';

/// 容器里的动画渐变效果
class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double _width = 50, _height = 50;
  Color _color = Colors.blue;
  Curve _curve = Curves.fastOutSlowIn;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedContainer')),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: Duration(milliseconds: 1000),
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Random random = Random();
          setState(() {
            _width = random.nextDouble() * 256;
            _height = random.nextDouble() * 256;
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
            _borderRadius = BorderRadius.circular(random.nextDouble() * 16);
          });
        },
      ),
    );
  }
}
