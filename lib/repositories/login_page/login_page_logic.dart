import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.dart';
part 'login_page_logic.freezed.dart';

class LoginPageLogic extends Cubit<LoginPageState> {
  LoginPageLogic() : super(LoginPageState.loaded());
}