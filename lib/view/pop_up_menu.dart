import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:led_handwriting_board/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({Key? key}) : super(key: key);

  void showAbout(BuildContext context) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    showAboutDialog(
      context: context,
      applicationIcon: const FlutterLogo(),
      applicationName: packageInfo.appName,
      applicationVersion: packageInfo.version,
      applicationLegalese: '©2020 linlan.xyz',
      children: <Widget>[
        const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('This is an about dialog in Flutter'))
      ],
    );
  }

  void openPrivacy() async {
    final privacyUrl = Uri.parse("https://linlan.xyz");
    if (await canLaunchUrl(privacyUrl)) {
      launchUrl(privacyUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(S.of(context).about)],
          ),
        )
      ],
      onSelected: (value) {
        switch (value) {
          case 1:
            showAbout(context);
            break;
        }
      },
      position: PopupMenuPosition.under,
    );
  }
}
