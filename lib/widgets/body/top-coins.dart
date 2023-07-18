// import 'package:bitriel/data/data_coin.dart';
// import 'package:flutter/material.dart';

// class TopCoins extends StatelessWidget {
//   const TopCoins({Key? key, this.datacoins}) : super(key: key);
//   final DataCosins? datacoins;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Image.asset(
//         datacoins!.img.toString(),
//       ),
//       title: Text(
//         datacoins!.tit.toString(),
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       subtitle: Text(datacoins!.subTit.toString()),
//       trailing: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text(
//             datacoins!.values.toString(),
//             style: const TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 50,
//             ),
//             child: Text(
//               datacoins!.percent.toString(),
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12,
//                 color: Color.fromARGB(255, 25, 190, 33),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:bitriel/data/data_coin.dart';
import 'package:bitriel/screens/detail_coin.dart';
import 'package:flutter/material.dart';

class TopCoins extends StatelessWidget {
  const TopCoins({Key? key, this.datacoins}) : super(key: key);
  final DataCosins? datacoins;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/images/bitcoin-441959.png'),
      title: const Text(
        'Bitcoin',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text('BTC'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            '\$ 37,089.09',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
            ),
            child: Text(
              '+2.5%',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color.fromARGB(255, 25, 190, 33),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutCion(),
            ));
      },
    );
  }
}
