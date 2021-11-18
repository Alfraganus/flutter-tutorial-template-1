
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Popular',style: TextStyle(fontSize: 20),),
          Text('New Connections',style: TextStyle(fontSize: 20),),
          Text('Trendy',style: TextStyle(fontSize: 20),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(24, 27, 30, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                )
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.all(10),
              child: const Text('All',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
