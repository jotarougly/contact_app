import 'package:flutter/material.dart';
import 'package:contactYours/ConstName/constValue.dart';
import 'package:contactYours/model/user.dart';



Container informationContaint(UserData user){
  return Container(
    height: 120.0,
    margin: new EdgeInsets.all(10.0),
    decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
        gradient: new LinearGradient(colors: [Colors.white70, Colors.blueAccent],
            begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        profilContaint('https://banner2.cleanpng.com/20180722/gfc/kisspng-user-profile-2018-in-sight-user-conference-expo-5b554c0968c377.0307553315323166814291.jpg'),
        new Expanded(child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(user.name, style: new TextStyle(fontSize: 17.0, color: Colors.white70, fontWeight: FontWeight.bold),),
            new SizedBox(height: 8.0,),
            new Text(user.phoneNumber, style: new TextStyle(fontSize: 12.0, color: Colors.white70),),
            new SizedBox(height: 10.0,),
            new Text(addressLabel),
            new Row(children: <Widget>[       
              new Column(children: <Widget>[
                new Text(cityLabel, style: new TextStyle(fontSize: 12.0, color: Colors.white)),
                new Text(user.city, style: new TextStyle(fontSize: 10.0, color: Colors.white)),
              ],),
              SizedBox(width: 10.0,),
              new Column(children: <Widget>[
                new Text(streetLabel, style: new TextStyle(fontSize: 12.0, color: Colors.white)),
                new Text(user.street, style: new TextStyle(fontSize: 10.0, color: Colors.white)),
              ],)
            ],)
        ],)),
        actionContaint()
      ]
    )        
  );
}

//Profile container
Padding profilContaint(String pictureUrl){
  return new Padding(
    padding: new EdgeInsets.only(left: 10.0, right: 10.0),
    child: new CircleAvatar(
      radius: 35.0, 
      backgroundImage: NetworkImage(pictureUrl),
      )
  );
}

//TextInformation
Expanded textInformationContaint(String name, String email, String phone, String street, String city){
  return new Expanded(child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      new Text(name, style: new TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
      new SizedBox(height: 8.0,),
      new Text(phone, style: new TextStyle(fontSize: 12.0, color: Colors.white70),),
      new SizedBox(height: 10.0,),
      new Text(addressLabel),
      new Row(children: <Widget>[       
        new Column(children: <Widget>[
          new Text(cityLabel, style: new TextStyle(fontSize: 12.0, color: Colors.white)),
          new Text(city, style: new TextStyle(fontSize: 10.0, color: Colors.white)),
        ],),
        SizedBox(width: 25.0,),
        new Column(children: <Widget>[
          new Text(streetLabel, style: new TextStyle(fontSize: 12.0, color: Colors.white)),
          new Text(street, style: new TextStyle(fontSize: 10.0, color: Colors.white)),
        ],)
      ],)
  ],));
}

//Padding IconContainer
Padding actionContaint(){
  return new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit,color: Colors.white,),
                tooltip: editButtonLabel,
                onPressed: ()=>debugPrint("Toto"),
              ),
            IconButton(
                icon: Icon(Icons.info,color: Colors.white,),
                tooltip: infoButtonLabel,
                onPressed: ()=>debugPrint("Toto"),
              ),
          ],));
}