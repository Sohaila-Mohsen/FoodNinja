import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'nav_state.dart';

class NavCubit extends Cubit<NavState> {
  int? selectedPage = 0;

  NavCubit({this.selectedPage = 0})
      : super(NavInitial());
  static NavCubit get(context) => BlocProvider.of(context);

  void changeIndex(int selected) {
    selectedPage = selected;
    emit(PageIndexInChanged());
  }
}
