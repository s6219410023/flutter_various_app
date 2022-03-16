import 'package:flutter/material.dart';

class TriangleAreaUI extends StatefulWidget {
  const TriangleAreaUI({Key? key}) : super(key: key);

  @override
  State<TriangleAreaUI> createState() => _TriangleAreaUIState();
}

class _TriangleAreaUIState extends State<TriangleAreaUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('triangle area'),
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
