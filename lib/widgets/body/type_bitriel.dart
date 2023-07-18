import 'package:flutter/material.dart';

class TypeofBitriel extends StatelessWidget {
  TypeofBitriel({Key? key, this.ttl, this.isImg = true, this.img})
      : super(key: key);

  final String? ttl;
  final String? img;
  bool isImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: isImg
                ? const AssetImage('assets/images/logo.png')
                : AssetImage(
                    img.toString(),
                  ),
          ),
          Text(
            ttl!,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
