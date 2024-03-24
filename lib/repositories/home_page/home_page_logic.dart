import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.dart';
part 'home_page_logic.freezed.dart';

class HomePageLogic extends Cubit<HomePageState> {
  HomePageLogic() : super(HomePageState.loaded());

}
