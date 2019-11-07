import 'package:contactYours/UI/theme.dart';
import 'package:contactYours/model/user.dart';
import 'package:flutter/material.dart';
import 'package:contactYours/ConstName/constValue.dart';
import 'package:contactYours/ConstName/AppColors.dart';
import 'package:contactYours/Widget/userInfo_container.dart';
import 'package:contactYours/UI/commons/collapsing_navigation_drawer_widget.dart';

class MainLayout extends StatefulWidget{
  List data;
  MainLayout(this.data);
  @override
  State<StatefulWidget> createState(){
    return new MainLayoutState(data);
  }
}

class MainLayoutState extends State<MainLayout>{
  List data;
  MainLayoutState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkmoon,
      body: NestedScrollView(        
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            /*ClipPath(
              clipper: MenuClipper(),
            ),*/
            SliverAppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search for contact',
                  onPressed: ()=> debugPrint("Search"),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  tooltip: 'Add contact',
                  onPressed: ()=> debugPrint("add"),
                ),
              ],
              expandedHeight: 100.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 40,
              backgroundColor: AppColors.appBarColor,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.only(left:5, bottom: 10),
                title: Text(appName,
                  style: TextStyle(
                    color: appNameColor,
                    fontSize: 16.0,
                  ),),
                background: Image.asset("assets/images/image.jpg",fit:BoxFit.cover),
              ),
            )
            
          ];
        },
        body: Stack(
        children: <Widget>[
          Center(
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.only(left:75.0),
            itemBuilder: (BuildContext context,int position){
              UserData user = new UserData(data[position]['name'],
              data[position]['email'],data[position]['phone'],
              data[position]['address']['city'],data[position]['address']['street']);
              return informationContaint(context,user);
            },
          )
        ),
          CollapsingNavigationDrawer(),
        ],
      )
      )
          );
        }

}