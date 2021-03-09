import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences extends StatefulWidget {

  @override
  SharedPreferencesState createState() => SharedPreferencesState();

  static getInstance() {
    List<double> ans = <double>[];
    return ans;
  }

  Future<bool> setStringList(String key, List<String> value) {

    List<String> sharedValue = <String>[];
    }



/*  _disp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);*/
  }

class SharedPreferencesState {
}

  SharedPreferences sharedInstance = SharedPreferences();


  Future<bool> putStringList(String key, List<String> value) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.setStringList(key, value);
  }

