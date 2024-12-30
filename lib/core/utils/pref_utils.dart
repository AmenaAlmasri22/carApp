import 'package:shared_preferences/shared_preferences.dart';


// PrefUtils class for managing shared preferences
class PrefUtils {
  // SharedPreferences instance
  static SharedPreferences? _sharedPreferences;

  // Constructor initializes SharedPreferences
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  // Initialize SharedPreferences if not already initialized
  Future<void> init() async {
    if (_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();
      print('SharedPreference Initialized');
    }
  }

  // Clear all data stored in preferences
  void clearPreferencesData() async {
    await _sharedPreferences!.clear();
  }

  // Set theme data in preferences
  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  // Get theme data from preferences
  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData') ?? 'primary';
    } catch (e) {
      return 'primary';
    }
  }
}
