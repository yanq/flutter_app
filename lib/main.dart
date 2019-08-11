import 'package:flutter/material.dart';
import 'package:flutter_app/simple_counter.dart';

void main() => runApp(MyApp());

/// 入口
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Catalog(),
    );
  }
}

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('目录')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('计数器'),
            subtitle: Text('计数器最简单的实现'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SimpleCounter(title: '简单计数器');
              }));
            },
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}
