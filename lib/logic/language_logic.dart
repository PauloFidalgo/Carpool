import 'dart:io';
/*
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'language_cubit.freezed.dart';
part 'language_cubit.g.dart';
part 'language_state.dart';

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
    AppLanguage initLanguage = Utils.getObjectWithDefault('language', AppLanguage.system);

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

    final curSettings = settingsRepository.currentSettings;

    if (curSettings != null) {
      final result = await settingsRepository.saveSettings(
        curSettings.copyWith(
          language: languageCode,
        ),
      );

      if (result == null) {
        return false;
      }

      emit(LanguageState.state(appLanguage: language));
      Utils.saveObject('language', language);

      return true;
    }

    return false;
  }

  void updateLanguageFromSettings(SettingsModel settings) {
    final AppLanguage settingsLanguage = AppLanguage.values.firstWhere(
      (e) => describeEnum(e) == settings.language,
      orElse: () => AppLanguage.en,
    );

    emit(LanguageState.state(appLanguage: settingsLanguage));
    Utils.saveObject('language', settingsLanguage);
  }
}
*/