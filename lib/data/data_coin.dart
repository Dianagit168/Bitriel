class DataCosins {
  final String? img;
  final String? tit;
  final String? subTit;
  final String? values;
  final String? percent;

  DataCosins({
    required this.img,
    required this.tit,
    required this.subTit,
    required this.values,
    required this.percent,
  });

  final List<DataCosins> listDataofCoins = [
    DataCosins(
      img: 'assets/images/bitcoin-441959.png',
      tit: 'Bitcoin',
      subTit: 'BTC',
      values: '37089.9',
      percent: '2.5',
    ),
    DataCosins(
      img: 'assets/images/bitcoin-441959.png',
      tit: 'Bitcoin',
      subTit: 'BTC',
      values: '37089.9',
      percent: '2.5',
    ),
    DataCosins(
      img: 'assets/images/bitcoin-441959.png',
      tit: 'Bitcoin',
      subTit: 'BTC',
      values: '37089.9',
      percent: '2.5',
    ),
    DataCosins(
      img: 'assets/images/bitcoin-441959.png',
      tit: 'Bitcoin',
      subTit: 'BTC',
      values: '37089.9',
      percent: '2.5',
    )
  ];
}
