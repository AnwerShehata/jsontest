import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';
import 'dart:convert';
import 'User.dart';


class HomeProvider extends BaseViewModel{

  User _data;
  get data => _data;
  Future inisial() async{
    var response = await http.get("https://reqres.in/api/users/2");
    _data = User.fromJson(json.decode(response.body));
    print(_data.data.avatar);
    notifyListeners();
  }


}