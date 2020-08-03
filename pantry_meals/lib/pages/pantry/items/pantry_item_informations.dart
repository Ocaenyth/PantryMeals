import 'package:flutter/material.dart';

class PantryItemInformations extends StatelessWidget {
  static const String nutri = "b";

  @override
  Widget build(BuildContext context) {
//    TODO: use column ?
//  TODO: Use actual food information
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Brioche tressée",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Expire le Lun 03 Aout",
            style: TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints.expand(),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        'res/nutriscore/$nutri.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("150 / 250g"),
                        Text('Left: 2'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
