import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor_demo/views/buyers/nav_screens/nav_screen_widget/banneR_widget.dart';
import 'package:multi_vendor_demo/views/buyers/nav_screens/nav_screen_widget/search_widget_top.dart';

import 'nav_screen_widget/welcome_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Welcome(),
      SizedBox(height: 20,),
      BannerWidget(),
      SizedBox(height: 20,),
      SearchWidgetTop(),
      
    ]);
  }
}


