import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 410,
        decoration: BoxDecoration(
            color: Color(0xffFFCF53), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: <Widget>[
            _ShoeWithShadow(),
            _ShoeSize(),
          ],
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Stack(
          children: <Widget>[
            Positioned(bottom: 20, right: 0, child: _ShadowShoe()),
            Image(image: AssetImage('assets/imgs/shoe1.png'))
          ],
        ),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
          width: 230,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(color: Color(0xffEAA14E), blurRadius: 35)
              ])),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _SizeShoeBox(7),
          _SizeShoeBox(7.5),
          _SizeShoeBox(8),
          _SizeShoeBox(8.5),
          _SizeShoeBox(9),
          _SizeShoeBox(9.5)
        ],
      ),
    );
  }
}

class _SizeShoeBox extends StatelessWidget {
  final double size;

  const _SizeShoeBox(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${size.toString().replaceAll('.0', '')}',
        style: TextStyle(
          color: size == 9 ? Color(0xffFFFFFF) : Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: size == 9 ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if(this.size == 9)
              BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5))
          ]),
    );
  }
}
