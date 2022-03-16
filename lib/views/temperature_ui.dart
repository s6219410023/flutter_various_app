import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemperatureUI extends StatefulWidget {
  const TemperatureUI({Key? key}) : super(key: key);

  @override
  State<TemperatureUI> createState() => _TemperatureUIState();
}

class _TemperatureUIState extends State<TemperatureUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('temperature'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
    );
  }
}
