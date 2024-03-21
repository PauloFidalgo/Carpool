import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'language_state.dart';
part 'language_logic.g.dart';
part 'language_logic.freezed.dart';

@HiveType(typeId: 1)
enum AppLanguage {
  @HiveField(0)
  system,
  @HiveField(1)
  en,
  @HiveField(2)
  pt,
}

class LanguageLogic extends Cubit<LanguageState> {
  LanguageLogic() : super(const LanguageState.state()) {
    final box = Hive.box('smarthome');
    AppLanguage i;

    if (box.containsKey('language')) {
      i = box.get('language');
    } else {
      i = AppLanguage.system;
    }

    AppLanguage initLanguage = i;

    if (initLanguage == AppLanguage.system) {
      final String languageCode = Platform.localeName.replaceAll('-', '_').split('_')[0].toLowerCase();
      initLanguage = AppLanguage.values.firstWhere(
        (e) => describeEnum(e) == languageCode,
        orElse: () => AppLanguage.en,
      );
    }

    emit(LanguageState.state(appLanguage: initLanguage));
  }

  AppLanguage get currentLanguage => state.appLanguage;

  Future<bool> changeLanguage(AppLanguage language) async {
    final String languageCode = describeEnum(language);

    emit(LanguageState.state(appLanguage: language));

    return false;
  }
}