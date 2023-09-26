import 'package:flutter/material.dart';
import 'package:islami_c9_str/my_theme_data.dart';

import '../sheets/language_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Language"),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.only(left: 12),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text("English"),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text("Themeing"),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 12),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text("Light"),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageSheet();
      },
    );
  }
}
