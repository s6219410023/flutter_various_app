import 'package:flutter/material.dart';
class SpashscreenUI extends StatefulWidget {
  const SpashscreenUI({ Key? key }) : super(key: key);

  @override
  State<SpashscreenUI> createState() => _SpashscreenUIState();
}

class _SpashscreenUIState extends State<SpashscreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
    );
  }
}