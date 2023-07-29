import 'package:flutter/material.dart';

PreferredSizeWidget appBar(BuildContext context, String? title) {
  return AppBar(
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 237, 241, 249),
    centerTitle: true,
    title: Text(
      title!,
      style: const TextStyle(
          color: Color.fromARGB(255, 13, 31, 60), fontWeight: FontWeight.bold),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    ),
  );
}
