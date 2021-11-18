import 'package:flutter/material.dart';
import 'package:flutter_template/screens/header.dart';
import 'package:flutter_template/screens/home/blackFriday.dart';
import 'package:flutter_template/screens/home/discover.dart';
import 'package:flutter_template/screens/home/menus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner:false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:Scaffold (
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0.0,
            bottomOpacity: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              alignment:Alignment.centerLeft,
              tooltip: 'Show Snackbar',
              onPressed: null,
            ),
            title: Text('Home',style: TextStyle(
              fontSize: 26,
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.notifications_active_rounded,
                    color: Colors.black87,
                    size: 30,
                  ), onPressed: () {}),
            ],

          ),
          body: Column(
            children: [
              Discover(),
              BlackFriday(),
              Menu(),
            ].map((e) => Padding(padding: EdgeInsets.only(top: 20), child: e)).toList(),
          ),
        )
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

      ],
    );
  }
}


