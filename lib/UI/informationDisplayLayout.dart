import 'package:contactYours/Widget/informationsDisplayWidgets.dart';
import 'package:contactYours/model/user.dart';
import 'package:flutter/material.dart';
import 'package:contactYours/ConstName/AppColors.dart';

class InformationDisplay extends StatefulWidget{
  UserData data;

  InformationDisplay({Key key,@required this.data}) : super(key:key);
  
  @override
  State<StatefulWidget> createState() {
    return Display(data);
  }
}

class Display extends State<InformationDisplay>{
  UserData user = new UserData("GOMADO Ayao Mawuli Stéphane", "email@gmail.com", "987888", "city", "street");
  Display(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Contact detail"),
        backgroundColor: AppColors.appBarColor,
        leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  tooltip: 'Back to main.',
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
        actions: <Widget>[
          IconButton(
                  icon: Icon(Icons.edit),
                  tooltip: 'Edit contact',
                  onPressed: ()=> debugPrint("Edit"),
                ),
          IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  tooltip: 'Add contact',
                  onPressed: ()=> debugPrint("Add"),
                ),
        ],
      ),
      body: Container(
        height: 700.0,
        width: 400.0,
        decoration: new BoxDecoration(
          color: AppColors.darkmoon,
          /*gradient: new LinearGradient(
            colors: [AppColors.darkmoon, Colors.white],
            begin: Alignment.centerRight,
            end: new Alignment(-1.0, -1.0)
          ),*/
        ),
        child: Stack(
          children: <Widget>[
            informationsContaint(user),
            profilImageContaint("https://library.kissclipart.com/20181212/ble/kissclipart-icon-name-svg-clipart-computer-icons-user-d5f11bae643dfd07.jpg"),
          ],
        ),
      )
    );
  }


}