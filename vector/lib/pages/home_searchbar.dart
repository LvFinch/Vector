/*
 * -> Author : Akko
 * -> Date : 2020-05-17 00:34:20
 * -> LastEditTime : 2020-05-18 10:08:11
 * -> LastEditors : Akko
 * -> Description : 
 * -> FilePath : \vector\lib\pages\home_searchbar.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:vector/model/data/home_searchbar_assets.dart';


class searchBarDelegate extends SearchDelegate<String> {
//重写右侧的图标

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        //将搜索内容置为空
        onPressed: () => {
          if (query.isEmpty)
            {
              query = "Try ✕ Again",
            }
          else
            {
              query = "",
              showSearch(context: context, delegate: searchBarDelegate()),
            }
        },
      )
    ];
  }

//重写返回图标
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        //关闭上下文，当前页面
        onPressed: () => close(context, null));
  }

  //重写搜索结果
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      // width: 100.0,
      height: 100.0,
      margin: EdgeInsets.all(10.0),
      child: Card(
        color: Colors.lightBlue[50],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                text: TextSpan(
                    text: suggestionList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    children: [
                      TextSpan(
                          text: suggestionList[index].substring(query.length),
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
            ));
  }
}
