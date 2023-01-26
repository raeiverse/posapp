part of 'produk_cubit.dart';

abstract class ProdukState extends Equatable {
  const ProdukState();

  @override
  List<Object> get props => [];
}

class ProdukInitial extends ProdukState {}

class ProdukLoading extends ProdukState {}

class ProdukFailed extends ProdukState {
  final String error;
  ProdukFailed(this.error);
  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class ProdukSuccess extends ProdukState {
  final List<produkModel> dataProduk;
  ProdukSuccess(this.dataProduk);
  @override
  // TODO: implement props
  List<Object> get props => [dataProduk];
}
