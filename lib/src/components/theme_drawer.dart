import 'package:darkmode/src/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:darkmode/src/components/app_font.dart';
import 'package:get/get.dart';

class ThemeDrawer extends GetView<ThemeController> {
  const ThemeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.8,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Obx(
            () => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppFont(
                      controller.themeMode.value == ThemeMode.light
                          ? '라이트 모드'
                          : '다크 모드',
                      size: 23,
                    ),
                    Switch(
                      value: controller.themeMode.value == ThemeMode.light,
                      onChanged: (ck) {
                        controller.updateMode(
                            ck ? ThemeMode.light : ThemeMode.dark,
                            isSaveLocalData: true);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
