// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_logic.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLanguageAdapter extends TypeAdapter<AppLanguage> {
  @override
  final int typeId = 1;

  @override
  AppLanguage read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppLanguage.system;
      case 1:
        return AppLanguage.en;
      case 2:
        return AppLanguage.pt;
      default:
        return AppLanguage.system;
    }
  }

  @override
  void write(BinaryWriter writer, AppLanguage obj) {
    switch (obj) {
      case AppLanguage.system:
        writer.writeByte(0);
        break;
      case AppLanguage.en:
        writer.writeByte(1);
        break;
      case AppLanguage.pt:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLanguageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
