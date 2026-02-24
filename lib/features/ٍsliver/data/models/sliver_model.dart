class SliverModel {
  final String name;
  final num price;
  final String symbol;
  final String updatedAt;
  final String updatedAtReadable;

  SliverModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory SliverModel.fromJson(Map<String, dynamic> json){
      return SliverModel(
      name: json["name"],
      price: json["price"],
      symbol: json["symbol"],
      updatedAt: json["updatedAt"],
      updatedAtReadable: json["updatedAtReadable"],
    );
  }
  

}
