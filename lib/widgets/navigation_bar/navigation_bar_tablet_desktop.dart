import 'package:basics_web/widgets/navigation_bar/navbar_item.dart';
import 'package:basics_web/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarTabletDesktop extends StatelessWidget{
  const NavigationBarTabletDesktop({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episodes'),
              SizedBox(width: 60),
              NavBarItem('About')
            ],
          )
        ],
      ),
    );
  }
}