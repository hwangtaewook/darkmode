import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends FullLifeCycleController with FullLifeCycleMixin {
  final SharedPreferences prefs;
  ThemeController(this.prefs);
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;
  @override
  void onInit() {
    super.onInit();
    init();
  }

  init() {
    var isDarkModeData = isDarkMode();
    if (isDarkModeData == null) {
      updateMode(Get.isPlatformDarkMode ? ThemeMode.dark : ThemeMode.light);
    } else {
      updateMode(isDarkModeData ? ThemeMode.dark : ThemeMode.light);
    }
  }

  updateMode(ThemeMode mode, {bool isSaveLocalData = false}) {
    themeMode(mode);
    if (isSaveLocalData) {
      saveLocalThemeMode();
    }
  }

  void saveLocalThemeMode() {
    prefs.setBool('isDarkMode', themeMode.value == ThemeMode.dark);
  }

  bool? isDarkMode() {
    return prefs.getBool('isDarkmode');
  }

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {
    init();
  }
}
