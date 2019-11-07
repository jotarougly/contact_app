import 'package:flutter/material.dart';
import './UI/mainLayout.dart';
import 'package:contactYours/model/user.dart';

import 'UI/informationDisplayLayout.dart';

void main() async{
  List _data = await UserData.getDataFromJson();
  return runApp(
    new MaterialApp(
      title: "UserDisplay",
      home: new MainLayout(_data),
      initialRoute: 'main',
      routes: {
        'main':(context)=>MainLayout(_data),
        'detail':(context)=>InformationDisplay(),
      },

    )
  );
}