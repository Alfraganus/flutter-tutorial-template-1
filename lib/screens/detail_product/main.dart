import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'banner.dart';
class DetailProduct extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: MaterialApp(
          title: 'Detail product',
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
                icon: const Icon(Icons.arrow_back,size: 25,),
                alignment:Alignment.centerLeft,
                tooltip: 'Show Snackbar',
                onPressed: null,
              ),
              title: Text('Detail product',style: TextStyle(
                  fontSize: 35,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold
              ),
                textAlign: TextAlign.center,
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.more_vert,
                      color: Colors.black87,
                      size: 30,
                    ), onPressed: () {}),
              ],

            ),
            body: Column(
              children: [
                MainBanner(),
              ].map((e) => Padding(padding: EdgeInsets.only(top: 20), child: e)).toList(),
            ),
          )
      ),
    );
  }
}
