import 'package:equatable/equatable.dart';

class produkModel extends Equatable {
  final String id;
  final String imageUrl;
  final String namaProduk;
  final int hargaProduk;
  final int diskonProduk;
  final bool promoProduk;
  final bool rekomendasiProduk;
  final String jenisProduk;

  produkModel({
    this.id = '',
    this.imageUrl = '',
    this.namaProduk = '',
    this.hargaProduk = 0,
    this.diskonProduk = 0,
    this.promoProduk = false,
    this.rekomendasiProduk = false,
    this.jenisProduk = '',
  });

  factory produkModel.fromJson(String id, Map<String, dynamic> json) =>
      produkModel(
        id: id,
        imageUrl: json['imageUrl'],
        namaProduk: json['namaProduk'].toLowerCase(),
        hargaProduk: json['hargaProduk'],
        diskonProduk: json['diskonProduk'],
        promoProduk: json['promoProduk'],
        rekomendasiProduk: json['rekomendasiProduk'],
        jenisProduk: json['jenisProduk'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'namaProduk': namaProduk,
        'hargaProduk': hargaProduk,
        'diskonProduk': diskonProduk,
        'promoProduk': promoProduk,
        'rekomendasiProduk': rekomendasiProduk,
        'jenisProduk': jenisProduk,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        imageUrl,
        namaProduk,
        hargaProduk,
        diskonProduk,
        promoProduk,
        rekomendasiProduk,
        jenisProduk,
      ];
}
