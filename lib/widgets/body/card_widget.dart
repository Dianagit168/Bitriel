import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, this.tit, this.clr, this.img}) : super(key: key);
  final String? tit;
  final Color? clr;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      elevation: 10, //ស្រមោល
      color: clr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Image(
              image: AssetImage(img!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text(
                  tit!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
