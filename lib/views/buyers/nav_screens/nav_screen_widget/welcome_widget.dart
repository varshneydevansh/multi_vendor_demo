import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Aur, Kaisan Ba? kaa chahis?👀',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Container(
            child: SvgPicture.asset(
              'assets/icons/cart.svg',
              width: 28,
            ),
          ),
        ],
      ),
    );
  }
}
