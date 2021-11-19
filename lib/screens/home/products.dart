import 'package:flutter/cupertino.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Image.network('https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
            width:  MediaQuery.of(context).size.width*0.40,
            height: MediaQuery.of(context).size.height*0.20,
            alignment: Alignment.topLeft,
            fit: BoxFit.cover,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Minavi Headseat Pro Gaming',
              textAlign: TextAlign.left,
              softWrap: true,
              style:TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,

              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
