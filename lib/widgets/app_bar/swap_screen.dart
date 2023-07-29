import 'package:flutter/material.dart';

class AppBarSwap extends StatelessWidget {
  const AppBarSwap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 124, 60),
        centerTitle: true,
        title: const Text('Swap'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

      // child: SizedBox(
      //   height: 70,
      //   width: double.infinity,
      //   child: Row(
      //     children: [
      //       IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const HomeScreen(),
      //               ));
      //         },
      //         icon: const Icon(
      //           Icons.arrow_back_ios,
      //           size: 15,
      //         ),
      //       ),
      //       const SizedBox(
      //         width: 135,
      //       ),
      //       const Text(
      //         'Swap',
      //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
