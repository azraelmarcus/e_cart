
import 'package:e_cart/contants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem =1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            press: (){if(numOfItem>1) {
              setState(() {
                numOfItem--;
              });
            }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefualtPaddin /2),
          child: Text(
            numOfItem.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,

          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: (){
              setState(() {
                numOfItem++;
              });       }),
      ],
    );
  }

  SizedBox buildOutlineButton({ required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 34,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)
        ),
        onPressed: (){
          press();
        },
        child: Icon(icon),
      ),
    );
  }
}

