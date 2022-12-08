import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        
        child: Container(
          color: Colors.yellow.shade700,
          height:double.infinity,
          width: double.infinity ,
            alignment: Alignment.center,
            padding: EdgeInsets.all(40),
            child: Text(
                "I\nlove\nUganda".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:40,
                      fontWeight: FontWeight.w700 ,
            ),
            )
        ),
        alignment: Alignment.center,
        color: Colors.red.shade900,
        // padding: EdgeInsets.only(left: 20, right: 20),
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(40),
        // padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
      ),
    );
  }
}
