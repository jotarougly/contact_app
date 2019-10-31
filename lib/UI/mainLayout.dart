import 'package:flutter/material.dart';
import 'package:contactYours/ConstName/constValue.dart';
import 'package:contactYours/ConstName/AppColors.dart';
import 'package:contactYours/Widget/userInfo_container.dart';
import 'package:contactYours/Widget/customClipper.dart';
import 'package:contactYours/model/user.dart';

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
      body: NestedScrollView(
        
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            /*ClipPath(
              clipper: MenuClipper(),
            ),*/
            SliverAppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Menu',
                  onPressed: ()=> debugPrint("Menu"),
                ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search for contact',
                  onPressed: ()=> debugPrint("Search"),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  tooltip: 'Add contact',
                  onPressed: ()=> debugPrint("add"),
                ),
              ],
              expandedHeight: 150.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: AppColors.lightPurple,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
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
        body: Center(
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.all(10.0),
            itemBuilder: (BuildContext context,int position){
              UserData user = new UserData(data[position]['name'],
              data[position]['email'],data[position]['phone'],
              data[position]['address']['city'],data[position]['address']['street']);
              //print(user.name);
              return informationContaint(user);
            },
          )
        ),
      )
          );
        }

}