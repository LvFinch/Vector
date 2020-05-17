/*
 * -> Author : Akko
 * -> Date : 2020-05-16 23:19:43
 * -> LastEditTime : 2020-05-17 14:53:02
 * -> LastEditors : Akko
 * -> Description : Vector Home
 * -> FilePath : \vector\lib\pages\home.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

import './home_searchbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
//如果需要,在这里声明变量,在定义函数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.format_list_bulleted),
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: ClipOval(
        //         child: Image.asset(
        //           "img/ico/menu.png",
        //           height: 32,
        //           width: 35,
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //       // ;
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //     );
        //   },
        // ),
        title: Text('Vector'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: searchBarDelegate());
            },
          )
        ],
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('主页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('设置'))
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            //头部
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("用户King"),
                    accountEmail: Text("xxxxx.@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/2.png"),
                          fit: BoxFit.cover),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/5.png"),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
