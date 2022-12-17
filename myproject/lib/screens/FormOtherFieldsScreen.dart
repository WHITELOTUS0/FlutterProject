import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


class FormOtherFieldsScreen extends StatefulWidget {
  const FormOtherFieldsScreen({super.key});

  @override
  State<FormOtherFieldsScreen> createState() => _FormOtherFieldsScreenState();
}

class _FormOtherFieldsScreenState extends State<FormOtherFieldsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form other fields"),
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
              height: 15,
            ),
            
            FormBuilderDateTimePicker(
              name: "dob",
              inputType: InputType.date,
              initialValue: DateTime.now(),
              decoration: InputDecoration(
                label: Text("Date of birth"),
                icon: Icon(Icons.date_range),
              ),
            ),
            FormBuilderSlider(
              name: 'slider',

              min: 0.0,
              max: 10.0,
              initialValue: 7.0,
              divisions: 20,
              activeColor: Colors.red,
              inactiveColor: Colors.pink[100],
              decoration: const InputDecoration(
                labelText: 'Number of things',
              ),
            ),

            FormBuilderCheckbox(
              name: 'accept_terms',
              initialValue: false,
              title: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'I have read and agree to the ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(color: Colors.blue),
                      // Flutter doesn't allow a button inside a button
                      // https://github.com/flutter/flutter/issues/31437#issuecomment-492411086
                      /*
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('launch url');
                                },
                              */
                    ),
                  ],
                ),
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
