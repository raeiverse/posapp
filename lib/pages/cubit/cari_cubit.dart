import 'package:bloc/bloc.dart';

class CariCubit extends Cubit<String> {
  CariCubit() : super((''));
  void diCari(String diCari) {
    emit(diCari);
  }
}
