import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/screens/detail_product/main.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailProduct())
        );
        },
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
        Image.network('https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        width:  MediaQuery.of(context).size.width*0.37,
        height: MediaQuery.of(context).size.height*0.20,
        alignment: Alignment.topLeft,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.38),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width:250,
                  child: Text('Minavi Headseat Pro Gaming',
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style:TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              Row(
                children: [
                  Text('\$30.99',
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style:TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                  ),
                  Text('\$10.00',
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style:TextStyle(
                      fontSize: 14,
                      decoration:TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Text('(2368 Reviews)'),
                    Expanded(
                        child: Icon(Icons.favorite_border,size: 35,)
                    )
                  ]
                )
              ].map((e) => Padding(padding: EdgeInsets.only(top: 15), child: e)).toList(),
            ),
        ),
      ),
        ],
      ),
    );
  }
}
