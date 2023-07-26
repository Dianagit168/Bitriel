class DataCoins {
  final String? marketCap;
  final String? volume;
  final String? circulating;
  final String? total;
  final String? chard;
  final String? img;
  final String? tit;
  final String? subTit;
  final String? values;
  final String? percent;

  DataCoins({
    required this.chard,
    required this.marketCap,
    required this.volume,
    required this.circulating,
    required this.total,
    required this.img,
    required this.tit,
    required this.subTit,
    required this.values,
    required this.percent,
  });
}

final List<DataCoins> listDataofCoins = [
  DataCoins(
    chard: 'assets/images/Group 157(1).png',
    marketCap: '408,910,725,000.00',
    volume: '48,032,821,000.00',
    circulating: '19,146,012 BTC',
    total: '19,146,012 BTC',
    img: 'assets/images/bitcoin-441959.png',
    tit: 'Bitcoin',
    subTit: 'BTC',
    values: '37089.9',
    percent: '2.5%',
  ),
  DataCoins(
    chard: 'assets/images/Group 157(1).png',
    marketCap: '409,910,725,000.00',
    volume: '50,032,821,000.00',
    circulating: '19,146,012 ETH',
    total: '20,146,012 ETH',
    img: 'assets/images/Tether-USDT-icon.png',
    tit: 'Tether USDt',
    subTit: 'USDt',
    values: '37089.9',
    percent: '2.6%',
  ),
  DataCoins(
    chard: 'assets/images/Group 157(1).png',
    marketCap: '407,910,725,000.00',
    volume: '40,032,821,000.00',
    circulating: '17,146,012 USDT',
    total: '15,146,012 USDT',
    img: 'assets/images/eth-diamond-black.png',
    tit: 'Ethereum',
    subTit: 'ETH',
    values: '37089.9',
    percent: '2.7%',
  ),
];
