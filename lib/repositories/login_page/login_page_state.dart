
part of 'login_page_logic.dart';

@freezed
class LoginPageState with _$LoginPageState {
  
  const factory LoginPageState.loaded({
    @Default(false) bool isDarkMode,
  }) = LoginPageStateLoaded;
}