import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_page_state.dart';
part 'signup_page_logic.freezed.dart';

class SignupPageLogic extends Cubit<SignupPageState> {
  SignupPageLogic() : super(SignupPageState.loaded());
}
