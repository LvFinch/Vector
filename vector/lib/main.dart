/*
 * -> Author : Akko
 * -> Date : 2020-05-16 21:49:51
 * -> LastEditTime : 2020-05-17 01:09:00
 * -> LastEditors : Akko
 * -> Description : Vector - A Music APP
 * -> FilePath : \vector\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

// import './pages/test.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vector',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
