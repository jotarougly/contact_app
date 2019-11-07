import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Contact", icon: Icons.contacts),
  NavigationModel(title: "Calls", icon: Icons.call),
  NavigationModel(title: "Notes", icon: Icons.note),
  NavigationModel(title: "Wallet", icon: Icons.attach_money),
  NavigationModel(title: "Settings", icon: Icons.settings),
];