import 'package:contactYours/ConstName/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:contactYours/model/user.dart';
import './customClipper.dart';

Container informationContaint(BuildContext context,UserData user){
  return Container(
    height: 90.0,
    margin: new EdgeInsets.all(7.0),
    child: Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          color: AppColors.contactContaint.withOpacity(0.9), 
          ),
          height: 90.0,
        ),
        ClipPath(
          clipper: MenuClipper(),
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.only( 
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
            ),
            color: AppColors.contactContaintClip, 
          ),
            alignment: Alignment.topLeft,
            height: 40.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12)
          ),
          height: 90.0,
          margin: new EdgeInsets.all(6.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              profilContaint('https://library.kissclipart.com/20181212/ble/kissclipart-icon-name-svg-clipart-computer-icons-user-d5f11bae643dfd07.jpg'),
              new Expanded(child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(user.name, style: new TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold),),
                  new SizedBox(height: 8.0,),
                  new Text(user.phoneNumber, style: new TextStyle(fontSize: 14.0, color: Colors.white)),
              ],)),
            ]
          )        
        )
      ],
    ),       
  );
}

//Profile container
Padding profilContaint(String pictureUrl){
  return new Padding(
    padding: new EdgeInsets.only(left: 6.0, right: 6.0),    
    child: new CircleAvatar(
      radius: 35.0, 
      backgroundImage: NetworkImage(pictureUrl),
      backgroundColor: AppColors.contactContaintClip,
      )
  );
}