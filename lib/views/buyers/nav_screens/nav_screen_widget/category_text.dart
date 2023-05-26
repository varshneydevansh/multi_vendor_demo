import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final List<String> _categoryLable = [
    'food',
    'clothes',
    'shoes',
    'bags',
    'watches',
    'electronics',
    'furniture',
    'others'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categoryLable.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ActionChip(
                            backgroundColor: Colors.yellow.shade900,
                            onPressed: () {},
                            label: Center(
                              child: Text(
                                _categoryLable[index],
                                style: TextStyle(color: const Color.fromARGB(255, 252, 252, 252), fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      })),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          )
        ],
      ),
    );
  }
}
