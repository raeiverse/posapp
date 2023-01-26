import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:posapp/pages/model/produkModel.dart';

class produkServices {
  CollectionReference _produkReference =
      FirebaseFirestore.instance.collection('dataProduk');

  // NOTE : ADD DATA
  Future<void> tambahDataProduk(produkModel addData) async {
    _produkReference.add({
      'imageUrl': addData.imageUrl,
      'namaProduk': addData.namaProduk,
      'hargaProduk': addData.hargaProduk,
      'diskonProduk': addData.diskonProduk,
      'promoProduk': addData.promoProduk,
      'rekomendasiProduk': addData.rekomendasiProduk,
      'jenisProduk': addData.jenisProduk,
    });
  }

  // NOTE : FETCH DATA
  Future<List<produkModel>> fetchProduk() async {
    try {
      QuerySnapshot result = await _produkReference.get();

      List<produkModel> products = result.docs.map((e) {
        return produkModel.fromJson(e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return products;
    } catch (e) {
      throw e;
    }
  }
}
