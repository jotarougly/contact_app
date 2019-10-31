import 'package:flutter/material.dart';
import 'package:contactYours/ConstName/constValue.dart';
import 'package:contactYours/ConstName/AppColors.dart';

NestedScrollView sliverWidget = NestedScrollView(
  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
    return <Widget>[
      SliverAppBar(
        leading: Icon(Icons.arrow_back),
        expandedHeight: 150.0,
        floating: true,
        pinned: true,
        backgroundColor: AppColors.lightPurple,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(appName,
            style: TextStyle(
              color: appNameColor,
              fontSize: 16.0,
            ),),
          background: Image.network("https://www.netty.fr/images/fonctionnalite_detail/carnet-adresse.svg"),
        ),
      )
      
    ];
  },
  body: Center(
    child: ListView(
      children: <Widget>[
        //informationContaint()  
        

      ],
    )
  ),
);