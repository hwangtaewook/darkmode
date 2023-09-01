import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:darkmode/src/components/app_font.dart';

class ThemeDrawer extends StatefulWidget {
  const ThemeDrawer({super.key});

  @override
  State<ThemeDrawer> createState() => _ThemeDrawerState();
}

class _ThemeDrawerState extends State<ThemeDrawer> {
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.8,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppFont(
                    '라이트 모드',
                    size: 23,
                  ),
                  Switch(
                    value: isLightMode,
                    inactiveThumbColor: const Color(0xff28222B),
                    inactiveTrackColor: const Color(0xffDEDEDE),
                    onChanged: (ck) {
                      setState(() {
                        isLightMode = ck;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
