import 'package:flutter/material.dart';
import 'package:led_handwriting_board/view/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:led_handwriting_board/generated/l10n.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const HomePage(),
    );
  }
}
