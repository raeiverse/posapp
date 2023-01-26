import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:posapp/pages/model/produkModel.dart';
import 'package:posapp/pages/service/produkServices.dart';

part 'produk_state.dart';

class ProdukCubit extends Cubit<ProdukState> {
  ProdukCubit() : super(ProdukInitial());

  void fetchProduk() async {
    try {
      emit(ProdukLoading());
      List<produkModel> dataProduk = await produkServices().fetchProduk();
      emit(ProdukSuccess(dataProduk));
    } catch (e) {
      emit(
        ProdukFailed(
          e.toString(),
        ),
      );
    }
  }
}
