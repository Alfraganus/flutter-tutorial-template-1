import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.all(Radius.circular(12.0)),
      child: Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.only(top: 35,bottom: 25,left: 25,right: 15),
        height: MediaQuery.of(context).size.height*0.25,
        color:  Color.fromRGBO(162, 120, 244, 1),
        child: Stack(
          children: [
          Positioned(
            bottom: -20,
            child: Card(							//Card with circular border
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                  child: Icon(Icons.favorite,color: Colors.redAccent,size: 30,)
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
