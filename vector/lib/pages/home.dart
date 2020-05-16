/*
 * -> Author : Akko
 * -> Date : 2020-05-16 23:19:43
 * -> LastEditTime : 2020-05-16 23:28:43
 * -> LastEditors : Akko
 * -> Description : 
 * -> FilePath : \vector\lib\pages\home.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
//如果需要,在这里声明变量,在定义函数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Young',
            ),
          ],
        ),
      ),
    );
  }
}
