import 'package:flutter/cupertino.dart';

class Item {
  final String? image;
  final String? title;
  final Color? clr;

  Item({required this.image, required this.title, required this.clr});
}

final ListItem = [
  Item(
    image: "assets/images/Exchange.png",
    title: "Swap",
    clr: const Color.fromARGB(255, 33, 157, 188),
  ),
  Item(
    image: "assets/images/Cryptocurrency.png",
    title: "Stacking",
    clr: const Color.fromARGB(255, 255, 157, 0),
  ),
  Item(
    image: "assets/images/Wallet.png",
    title: "Buy",
    clr: const Color.fromARGB(255, 255, 0, 115),
  ),
  Item(
    image: "assets/images/Nft.png",
    title: "Swap",
    clr: const Color.fromARGB(255, 107, 21, 237),
  ),
];
