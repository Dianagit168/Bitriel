import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';

class AppBarD extends StatelessWidget {
  const AppBarD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          ),
          const SizedBox(
            width: 120,
          ),
          const Text(
            'Bitcoin',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
