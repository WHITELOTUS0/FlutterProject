import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormDecoration extends StatefulWidget {
  const FormDecoration({super.key});

  @override
  State<FormDecoration> createState() => _FormDecorationState();
}

class _FormDecorationState extends State<FormDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Decoration"),
      ),
      body: Container(
        padding: EdgeInsets.only(left:15, right:15),
        child: Column(
          children: [
            FormBuilderTextField(
              name: "first_name",
              readOnly: true,
              decoration: InputDecoration(
                  label: Text("First Name"),
                  icon: Icon(Icons.supervised_user_circle_rounded),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FormBuilderTextField(
              name: "last_name",
              maxLength: 10,
              decoration: InputDecoration(
                icon: Icon(Icons.supervised_user_circle_rounded, color: Colors.red,),
                iconColor: Colors.blue,
                labelText: "Last Name",
                isDense: true,
                prefixText: "Mr. ",
                suffixIcon: Icon(Icons.cyclone),
                helperText: "Enter last name as it appears on your passport",
                helperStyle: TextStyle(color: Colors.green),
                hintText: "Enter last name",
                filled: true,
                fillColor: Colors.blue.shade100,

              ),
            ),

          ],
        ),
      ),
    );
  }

  void makeToast() {
    Fluttertoast.showToast(
        msg: "This is my Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey.shade700,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
