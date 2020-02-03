import 'package:basics_web/navigation_drawer/navigation_drawer.dart';
import 'package:basics_web/views/home/home_content_desktop.dart/home_content_desktop.dart';
import 'package:basics_web/views/home/home_content_desktop.dart/home_content_mobile.dart';
import 'package:basics_web/widgets/centered_view/centered_view.dart';
import 'package:basics_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget{
  const LayoutTemplate({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
            child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                )
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}