import 'package:e_cart/contants.dart';
import 'package:flutter/material.dart';





class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories =["Hand Bag","Jewellery","Footwear","Dress","watches"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:kDefualtPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index)
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex =index;
        });
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefualtPaddin),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  categories[index],
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index? Colors.black : Colors.grey,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: kDefualtPaddin /4),
                  height: 2,
                  width: 30,
                  color: selectedIndex ==index? Colors.black : Colors.transparent,
                )
              ]
          )

      ),
    );

  }
}