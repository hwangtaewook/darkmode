import 'package:darkmode/src/app.dart';
import 'package:darkmode/src/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //플랫폼간 상호작용하기 전 미리 선언
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  Get.put(ThemeController(prefs), permanent: true);
  runApp(const MyApp());
}
