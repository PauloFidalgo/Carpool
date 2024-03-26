import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.dart';
part 'login_page_logic.freezed.dart';

class LoginPageLogic extends Cubit<LoginPageState> {
  LoginPageLogic() : super(LoginPageState.loaded());

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print("Login sucesseful");
      return credential.user;
    } catch (e) {
      print("Wrong Credentials");
    }
  }
}
