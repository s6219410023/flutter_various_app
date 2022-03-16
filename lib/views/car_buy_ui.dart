import 'package:flutter/material.dart';

class CarBuyUI extends StatefulWidget {
  const CarBuyUI({Key? key}) : super(key: key);

  @override
  State<CarBuyUI> createState() => _CarBuyUIState();
}

class _CarBuyUIState extends State<CarBuyUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Car Buy'),
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
