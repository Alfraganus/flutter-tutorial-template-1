import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackFriday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.all(Radius.circular(12.0)),
      child: Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 35,bottom: 25,left: 25,right: 15),
        height: MediaQuery.of(context).size.height*0.25,
        color:  Color.fromRGBO(162, 120, 244, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.left,
                text: TextSpan (
                    children: [
                      TextSpan(text: 'Black friday \n',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white
                      )),
                      TextSpan(text: '20% off for all item',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      )),
                    ]
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 28),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(24, 27, 30, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: const Text('Buy now',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
