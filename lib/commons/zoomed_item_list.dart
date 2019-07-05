import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:western_food/commons/data.dart';
import 'package:western_food/commons/styles.dart';

class SingleItemList extends StatelessWidget {
  var currentPage;
  var mainWidgetZoom;
  var otherWidgetZoom;
  FixedExtentScrollController fixedExtentScrollController =
    new FixedExtentScrollController();

   SingleItemList(this.currentPage);

  @override
  Widget build(BuildContext context) {
  
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;
       

        List<Widget> items = new List();
        List<Widget> imageList = new List();


        for (var i = 0; i < images.length; i++) {
          var delta =  currentPage-i;
          var size = delta *100;
           items.add( Positioned(
             left: size,
            // right: -size,
             top: 0.0,
             child: Row(
               
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset('assets/plate.png', height: 150,),
                 ),
                 Image.asset('assets/plate.png', height: 150,),
                 Image.asset('assets/plate.png', height: 150,),
                
               ],
             ), height: 150,));    
        
          return Stack(fit: StackFit.expand, children: items);
        }
      },
    );
  }
}
