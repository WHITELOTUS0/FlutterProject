import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerStylingScreen extends StatefulWidget {
  const ContainerStylingScreen({super.key});

  @override
  State<ContainerStylingScreen> createState() => _myState();
}

class _myState extends State<ContainerStylingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container decoration"),
      ),
      body: Column(
        children:[
          Container(
            child:Text("Some data!",
            style: TextStyle(color: Colors.white),
            ),
            width:300,
            margin: EdgeInsets.all(50),
            height:300,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(

              ),
              /*image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage("assets/images/image1.jpg")
              )*/
            ) ,
          )
        ],
      ),
    );
  }
}
