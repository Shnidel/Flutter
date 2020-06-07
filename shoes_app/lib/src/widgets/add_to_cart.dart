import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class AddToCart extends StatelessWidget {
  final double amount;

  AddToCart({this.amount});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.10),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 20,),
            Text('\$${this.amount}', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500
            ),),
            Spacer(),
            OrangeBtn(text: 'Add to cart',),
            SizedBox(width: 20,)
          ],
        ),
      ),
    );
  }
}
