import 'package:flutter/material.dart';
import 'package:western_food/commons/data.dart';

class SingleItemList extends StatelessWidget {
  var currentPage;
  var mainWidgetZoom;
  var otherWidgetZoom;

  SingleItemList(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;
        var primaryLayoutHeight = height;
        var primaryLayoutWidth = width;

        List<Widget> items = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          if(i == currentPage){
              var
            }
          
        }
      },
    );
  }
}
