import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidgetTop extends StatelessWidget {
  const SearchWidgetTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: '        Search for products, brands and more',
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          prefixIcon:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/search.svg', width: 10),
              ),
        ),
      ),
    );
  }
}