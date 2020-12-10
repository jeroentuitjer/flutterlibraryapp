import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  State<StatefulWidget> createState() => _FormContainer();
}

class _FormContainer extends State<FormPage>{
  bool zichtbaar = false;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(
          value: zichtbaar,
          onChanged: (bool value) {
            setState(() {
              zichtbaar = value;
            });
            print(zichtbaar);
          },
        ),
        Center(
          child: Visibility(
          visible: zichtbaar,
          child: FlutterLogo(size:200),
          ),
        )
      ],
    );
  }

}