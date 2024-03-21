import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'language_state.dart';
part 'language_logic.freezed.dart';

enum AppLanguage {
  system,
  en,
  pt,
}

class LanguageLogic extends Cubit<LanguageState> {
  LanguageLogic() : super(const LanguageState.state(appLanguage: AppLanguage.system));

  AppLanguage get currentLanguage => state.appLanguage;

  void changeLanguage(AppLanguage language) {
    emit(LanguageState.state(appLanguage: language));
  }
}