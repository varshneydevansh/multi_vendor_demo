import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor_demo/views/buyers/nav_screens/search_widget_top.dart';

import 'nav_screen_widget/welcome_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Column(children: [
        Welcome(),
        SizedBox(height: 20,),
        SearchWidgetTop()
      ]),
    );
  }
}


