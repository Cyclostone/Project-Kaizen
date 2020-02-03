import 'package:basics_web/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'SKILL UP NOW',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

}