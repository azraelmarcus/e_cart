
import 'package:e_cart/screens/details/components/cart_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}