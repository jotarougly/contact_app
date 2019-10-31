import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'company.dart';

class UserData {
String name;
String email;
String phoneNumber;
String street;
String city;
String website;
Company userCompany;
UserData(this.name,this.email,this.phoneNumber,this.city,this.street);
  //List _userData = await getDataFromJsaon();
static Future<List> getDataFromJson() async{
  String apiUrl = "https://jsonplaceholder.typicode.com/users";
  http.Response jsonResponse = await http.get(apiUrl);
  return json.decode(jsonResponse.body);
}
}