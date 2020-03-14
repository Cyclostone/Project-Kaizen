import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/views/home/home_content_desktop.dart';
import 'package:web/views/home/home_content_mobile.dart';
import 'package:web/widgets/NavigationBar/navigation_bar.dart';
import 'package:web/widgets/NavigationDrawer/navigation_drawer.dart';
import 'package:web/widgets/centered_view/centered_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
       
      builder: (context, sizingInformation) => Scaffold(
        
         drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
      backgroundColor: Colors.white,
      body: 
      new Container(
     decoration: BoxDecoration(
          

          image: DecorationImage(
            
            image: AssetImage("assets/happy.jpg"),
            fit: BoxFit.cover,
            
            
            
          ),
        ),
      
      child:CenteredView(

        
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              ),
            )
          ],
        ),
      ),

      
    )));
  }
}