import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
       children: [
         Textcha(),
         SearchPage()
       ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.30,
      height: 200,
      color: Colors.black87,
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.black87,
          focusColor: Colors.green,
          contentPadding: EdgeInsets.all(16),
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                /* Clear the search field */
              },
            ),
            hintText: 'Search...',
            border: InputBorder.none),
      ),
    );
  }
}

class Textcha extends StatelessWidget {
  const Textcha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.40,
      height: 300,
      child:  RichText(
          text: TextSpan (
              children: [
                TextSpan(text: 'Discover \n',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60
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
