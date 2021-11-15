import 'package:flutter/material.dart';
import 'package:flutter_template/screens/header.dart';
import 'package:flutter_template/screens/home/discover.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner:false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:Scaffold (
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
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
          body: Stack(
            children: [
              Discover()
            ],
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


