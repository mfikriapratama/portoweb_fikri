part of 'shared.dart';

class LocalStorage {
  LocalStorage._privateConstructor();

  static final LocalStorage instance = LocalStorage._privateConstructor();

  setStringValue(String key, String value) async {
    SecureSharedPref myPrefs = await SecureSharedPref.getInstance();
    myPrefs.putString(key, value, isEncrypted: true);
  }

  Future<String?> getStringValue(String key) async {
    SecureSharedPref myPrefs = await SecureSharedPref.getInstance();
    return myPrefs.getString(key, isEncrypted: true);
  }

  removeAll() async {
    SecureSharedPref myPrefs = await SecureSharedPref.getInstance();
    return myPrefs.clearAll();
  }
}
