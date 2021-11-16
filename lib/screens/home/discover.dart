import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Headlines(),
         SearchField()
       ],
      ),
    );
  }
}

class Headlines extends StatelessWidget {
  const Headlines({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.25,
      child:  RichText(
          text: TextSpan (
              children: [
                TextSpan(text: 'Discover \n',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45
                )),
                TextSpan(text: 'New Collections',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )),
              ]
          )
      ),
    );
  }
}


class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.18,
      // height: 100,
      // color: Colors.black87,
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.black87,
          focusColor: Colors.green,
          contentPadding: EdgeInsets.all(9),
            suffixIcon:  Icon(Icons.search,size: 70,),
            hintText: 'Search...',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0))),
      ),
    );
  }
}

