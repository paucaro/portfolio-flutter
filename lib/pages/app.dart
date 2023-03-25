import 'package:flutter/material.dart';
import 'package:portafolio_flutter/theme/theme_constants.dart';
import 'package:portafolio_flutter/theme/theme_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portafolio_flutter/widgets/header_title.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key, required this.themeManager});

  final ThemeManager themeManager;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: colorDark,
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            onPressed: () {},
            child: Text(AppLocalizations.of(context)?.about ?? ""),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: colorDark,
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            onPressed: () {},
            child: Text(AppLocalizations.of(context)?.projects ?? ""),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: colorDark,
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            onPressed: () {},
            child: Text(AppLocalizations.of(context)?.blog ?? ""),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: colorDark,
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            onPressed: () {},
            child: Text(AppLocalizations.of(context)?.cv ?? ""),
          ),
          Switch(
              value: widget.themeManager.themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                widget.themeManager.toggleTheme(newValue);
              })
        ],
      ),
      body: Container(
        child: Center(
          child: HeaderTitle(),
        ),
      ),
    );
  }
}
