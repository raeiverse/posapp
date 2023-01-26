import 'package:bloc/bloc.dart';

class SelectCubit extends Cubit<List<dynamic>> {
  SelectCubit() : super([]);

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }

  selectProduct(String id) {
    if (!isSelected(id)) {
      state.add(id);
    } else if (id == 'clear') {
      state.clear();
    } else {
      state.remove(id);
    }
    // print('select');
    // print(id);
    emit(List.from(state));
  }
}
