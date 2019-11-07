import 'package:contactYours/ConstName/AppColors.dart';
import 'package:contactYours/ConstName/constValue.dart';
import 'package:contactYours/model/user.dart';
import 'package:flutter/material.dart';

Widget informationsContaint(UserData user){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        
        child: Container(
          width: 500.0,
          height: 400.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.contactContaint,
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:24.0),
                    child: Text(
                      user.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      user.phoneNumber,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      user.email,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      addressLabel,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Row(
                      children: <Widget>[
                        new Column(children: <Widget>[
                          new Text(cityLabel, style: new TextStyle(fontSize: 12.0, color: Colors.white)),
                          new Text(user.city, style: new TextStyle(fontSize: 10.0, color: Colors.white)),
                        ],),
                        SizedBox(width: 10.0,),
                        new Column(children: <Widget>[
                          new Text(streetLabel, style: new TextStyle(fontSize: 12.0, color: Colors.white)),
                          new Text(user.street, style: new TextStyle(fontSize: 10.0, color: Colors.white)),
                        ],),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      children: <Widget>[
                        new Column(children: <Widget>[
                          new IconButton(
                            icon: Icon(Icons.message, color: AppColors.iconColor),
                            onPressed: ()=>debugPrint("Call"),
                          ),
                          new Text(iconTextMessage, style: new TextStyle(fontSize: 8.0, color: Colors.white)),
                        ],),
                        SizedBox(width: 5.0,),
                        new Column(children: <Widget>[
                          new IconButton(
                            icon: Icon(Icons.call, color: AppColors.iconColor,),
                            onPressed: ()=>debugPrint("Call"),
                          ),
                          new Text(iconTextCall, style: new TextStyle(fontSize: 8.0, color: Colors.white)),
                        ],),
                        new Column(children: <Widget>[
                          new IconButton(
                            icon: Icon(Icons.mail, color: AppColors.iconColor),
                            onPressed: ()=>debugPrint("Call"),
                          ),
                          new Text(iconTextMail, style: new TextStyle(fontSize: 8.0, color: Colors.white)),
                        ],),
                        SizedBox(width: 5.0,),
                        new Column(children: <Widget>[
                          new IconButton(
                            icon: Icon(Icons.share, color: AppColors.iconColor),
                            onPressed: ()=>debugPrint("Call"),
                          ),
                          new Text(iconTextShare, style: new TextStyle(fontSize: 8.0, color: Colors.white)),
                        ],),
                        SizedBox(width: 5.0,),
                        new Column(children: <Widget>[
                          new IconButton(
                            icon: Icon(Icons.note_add, color: AppColors.iconColor),
                            onPressed: ()=>debugPrint("Call"),
                          ),
                          new Text(iconTextAddRemeber, style: new TextStyle(fontSize: 8.0, color: Colors.white)),
                        ],)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Positioned profilImageContaint(String images){
  return Positioned(
    top: 15.0,
    left: 120,
    child: Container(
      width: 120.0,
      height: 120.0,
      decoration: new BoxDecoration(
        color: AppColors.contactContaintClip,
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: new NetworkImage(images)
        )
      ),
    ),
  );
}