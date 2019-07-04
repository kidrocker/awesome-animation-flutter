import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:western_food/commons/styles.dart';

class CardStack extends StatelessWidget {
  var title;
  String textDescription;
  CardStack(this.title, this.textDescription);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         Padding(
        padding: const EdgeInsets.only(left:10.0, top: 40.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[Flexible(child: Text(title, style: cardTitle,textAlign: TextAlign.left)),
                Icon(Icons.bookmark_border, color: Colors.grey, size: 30.0,)
                ],
                
              ),
              Row(children: <Widget>[
                Icon(Icons.star, color: Colors.orange, size: 25.0,),
                Icon(Icons.star, color: Colors.orange, size: 25.0,),
                Icon(Icons.star, color: Colors.orange, size: 25.0,),
                Icon(Icons.star, color: Colors.orange, size: 25.0,),
                Icon(Icons.star, color: Colors.orange[200], size: 25.0,),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text('4.0',style:TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16.0)),
                )
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(height: 1, color: Colors.grey[400],),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(textDescription, overflow: TextOverflow.ellipsis, maxLines: 4, style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Column(children: <Widget>[
                    Text('15', style:TextStyle(color: Colors.black, fontSize:26.0, fontWeight:FontWeight.bold)),
                    Text('MIN', style: TextStyle(color: Colors.grey),)
                  ],),
                  Column(children: <Widget>[
                    Text('6', style:TextStyle(color: Colors.black, fontSize:26.0, fontWeight:FontWeight.bold)),
                    Text('INGREDIENT', style: TextStyle(color: Colors.grey),)
                  ],),
                  Column(children: <Widget>[
                    Text('90', style:TextStyle(color: Colors.black, fontSize:26.0, fontWeight:FontWeight.bold)),
                    Text('KCAL', style: TextStyle(color: Colors.grey),)
                  ],),
                  
                ],),
              )
          ],
        ),
      ),
      ]
    );
  }
}
