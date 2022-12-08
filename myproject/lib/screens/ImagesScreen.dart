import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage('assets/images/image1.jpg'),
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),

          Image(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4YqvqnuqaTCEfR3YG-zRkUtvdYyWEPoqWw&usqp=CAU"),
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrnYsHMvp1ItKxmoIDo5sWDFp8rkfiWeIlLQ&usqp=CAU"),
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
