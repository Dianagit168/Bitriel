import 'package:flutter/cupertino.dart';

class InfoCoin extends StatelessWidget {
  const InfoCoin({Key? key, required this.tit, required this.val})
      : super(key: key);
  final String? tit;
  final String? val;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tit!,
          style: const TextStyle(color: Color.fromARGB(255, 148, 147, 147)),
        ),
        Text(val!),
      ],
    );
  }
}
