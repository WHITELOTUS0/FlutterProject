import 'package:flutter/material.dart';
import 'package:myproject/Screens/ColumnScreen.dart';
import 'package:myproject/screens/RowsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ULAM'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Columns"),
            leading: Icon(Icons.view_column_outlined),
            trailing: Icon(Icons.chevron_right),
            subtitle:Text("All about columns..."),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColumnScreen(),
                ),
              );
            },
          ),


          ListTile(
            title: Text("Rows"),
            leading: Icon(Icons.table_rows_outlined),
            trailing: Icon(Icons.chevron_right),
            subtitle:Text("All about rows..."),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RowsScreen(),
                ),
              );
            },
          ),
          /*InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColumnScreen(),
                ),
              );
            },
            child: Text("Columns"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColumnScreen(),
                ),
              );
            },
            child: Text("Columns"),
          ),*/
        ],
      ),
    );
  }
}
