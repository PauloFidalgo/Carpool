import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.dart';
part 'home_page_logic.freezed.dart';

class HomePageLogic extends Cubit<HomePageState> {
  final bool isDarkMode;

  HomePageLogic({required this.isDarkMode}) : super(HomePageState.loaded(isDarkMode: isDarkMode));

  void changeTheme() {
    final bool newDarkMode = !state.isDarkMode;
    emit(HomePageState.loaded(isDarkMode: newDarkMode));
  }
}
