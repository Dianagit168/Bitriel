import 'package:flutter/material.dart';

class VerifyWords extends StatelessWidget {
  const VerifyWords({
    Key? key,
    this.ttl1,
    this.ttl2,
    this.ttl3,
  }) : super(key: key);

  final String? ttl1;
  final String? ttl2;
  final String? ttl3;

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
                const Color.fromARGB(255, 255, 255, 255),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            child: Text(
              '$ttl1',
              style: const TextStyle(
                color: Color.fromARGB(255, 242, 124, 60),
              ),
            ),
            onPressed: () {},
          ),
        if (ttl2 != null)
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(90, 35)),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 255, 255, 255),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            child: Text(
              '$ttl2',
              style: const TextStyle(
                color: Color.fromARGB(255, 242, 124, 60),
              ),
            ),
            onPressed: () {},
          ),
        if (ttl3 != null)
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(90, 35)),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 255, 255, 255),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            child: Text(
              '$ttl3',
              style: const TextStyle(
                color: Color.fromARGB(255, 242, 124, 60),
              ),
            ),
            onPressed: () {},
          )
      ],
    );
  }
}
