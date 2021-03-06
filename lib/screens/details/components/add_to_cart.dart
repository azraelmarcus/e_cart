
import 'package:e_cart/contants.dart';
import 'package:e_cart/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddtoCart extends StatelessWidget {
  const AddtoCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefualtPaddin),
        child: Row(

          children: [
            Container(
              margin: EdgeInsets.only(right: kDefualtPaddin),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: product.color

                  )
              ),
              child: IconButton(
                  onPressed: (){

                  }, icon: SvgPicture.asset("assets/icons/add_to_cart.svg", color: product.color,)
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  color: product.color,
                  onPressed: (){},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],

        )
    );
  }
}
