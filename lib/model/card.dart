import 'package:flutter/material.dart';

class Tarjeta{
  String image;
  String name;
  Tarjeta({this.image, this.name});
}

class TarjetaModel extends StatelessWidget{
  final String image;
  final String name;
  const TarjetaModel({Key key, this.image, this.name,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 65,
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 30),
                Image(image: AssetImage(image)),
                SizedBox(width: 10),
                Text(name,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        )
    );
  }
}