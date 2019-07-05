import 'dart:math';

import 'package:flutter/material.dart';
import 'package:western_food/commons/card.dart';
import 'package:western_food/commons/colors.dart';
import 'package:western_food/commons/styles.dart';
import 'package:western_food/commons/top_list.dart';
import 'package:western_food/commons/zoomed_item_list.dart';

import 'card_scroll.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = 5.0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 5);
    PageController _controller = PageController(initialPage: 5);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
      decoration: BoxDecoration(color: primaryColor),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 200.0,
            child: Stack( 
              children:<Widget>[ 
                SingleItemList(currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: title.length,
                    controller: _controller,
                    reverse: true,
                    itemBuilder: (context, position){
                      return Container();
                    },
                  ),
                )
            ]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            height: 380.0,
            child: Container(
              child: Stack(
                children: <Widget>[
                  CardScrollWidget(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, position) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}