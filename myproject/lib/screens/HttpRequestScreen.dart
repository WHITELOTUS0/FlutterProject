import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HttpRequestScreen extends StatefulWidget {
  const HttpRequestScreen({super.key});



  @override
  State<HttpRequestScreen> createState() => _HttpRequestScreenState();
}

class _HttpRequestScreenState extends State<HttpRequestScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title:Text("HTTP GET"),
            onTap:(){
              httpGet();
            } ,
          ),

        ],
      ),
    );
  }

  void httpGet() async{
    var response=null;

    try{
      print('START FETCHING...........');
      response= await Dio().get('https://dummyjson.com/products');
      print(response);
      print('DONE FETCHING!!');

    }on DioError catch(e){
      print(e.response?.toString());
      print("FAILED");
    }

    return;


    if (response==null){
      print('FAILED BECAUSE URL IS NULL');
    }else
      print("FAILED");


  }



}


