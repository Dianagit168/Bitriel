import 'package:flutter/material.dart';

class ButtonWords extends StatelessWidget {
  const ButtonWords({
    Key? key,
    this.ttl1,
    this.ttl2,
    this.ttl3,
  }) : super(key: key);

  final Text? ttl1;
  final Text? ttl2;
  final Text? ttl3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (ttl1 != null)
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(90, 35)),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 242, 124, 60),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            child: ttl1,
            onPressed: () {},
          ),
        if (ttl2 != null)
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(90, 35)),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 242, 124, 60),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            child: ttl2,
            onPressed: () {},
          ),
        if (ttl3 != null)
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(90, 35)),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 242, 124, 60),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            child: ttl3,
            onPressed: () {},
          )
      ],
    );
  }
}
