import 'package:bitriel/screens/detail_coin.dart';
import 'package:flutter/material.dart';

import '../../data/data_coin.dart';

class TopCoins extends StatelessWidget {
  const TopCoins({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listDataofCoins.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutCion(
                  aboutCoins: listDataofCoins[index],
                ),
              )),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('${listDataofCoins[index].img}'),
          ),
          title: Text(
            '${listDataofCoins[index].tit}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text('${listDataofCoins[index].subTit}'),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${listDataofCoins[index].values}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  '${listDataofCoins[index].percent}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color.fromARGB(255, 25, 190, 33),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
// import 'package:bitriel/data/data_coin.dart';
// import 'package:bitriel/screens/detail_coin.dart';
// import 'package:flutter/material.dart';

// class TopCoins extends StatelessWidget {
//   const TopCoins({Key? key, this.datacoins}) : super(key: key);
//   final DataCosins? datacoins;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Image.asset('assets/images/bitcoin-441959.png'),
//       title: const Text(
//         'Bitcoin',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       subtitle: const Text('BTC'),
//       trailing: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: const [
//           Text(
//             '\$ 37,089.09',
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: 50,
//             ),
//             child: Text(
//               '+2.5%',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12,
//                 color: Color.fromARGB(255, 25, 190, 33),
//               ),
//             ),
//           ),
//         ],
//       ),
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const AboutCion(),
//             ));
//       },
//     );
//   }
// }
