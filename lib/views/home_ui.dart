import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_various_app/views/car_buy_ui.dart';
import 'package:flutter_various_app/views/temperature_ui.dart';
import 'package:flutter_various_app/views/triangle_area_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Various App',
              ),
              accountEmail: Text(
                'SAU',
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              currentAccountPicture: Image.asset(
                'assets/images/banner.png',
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TemperatureUI(),
                  ),
                );
              },
              title: Text(
                'Temperature Convertor',
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.temperatureHigh,
                color: Colors.red,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TriangleAreaUI(),
                  ),
                );
              },
              title: Text(
                'Triangle Area',
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.exclamationTriangle,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarBuyUI(),
                  ),
                );
              },
              title: Text(
                'Car Buy',
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.car,
                color: Colors.purple,
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                exit(0);
              },
              title: Text(
                'ออกจากแอปพลิเคชั่น',
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.doorClosed,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TemperatureUI(),
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.temperatureHigh,
              ),
              label: Text('Go to Temperature Convertor'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 80.0,
                  50.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TriangleAreaUI(),
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.exclamationTriangle,
              ),
              label: Text('Go to Triangle Area'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 80.0,
                  50.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarBuyUI(),
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.car,
              ),
              label: Text('Go to Car Buy'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 80.0,
                  50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
