import 'package:flutter/material.dart';
import 'package:islami_c9_str/my_theme_data.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "English",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: MyThemeData.primaryColor),
              ),
              Visibility(
                  visible: true,
                  child: Icon(
                    Icons.done,
                    color: MyThemeData.primaryColor,
                  ))
            ],
          ),
          Divider(
            endIndent: 50,
            indent: 50,
            thickness: 1,
            color: MyThemeData.primaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Arabic"),

              Visibility(
                  visible: false,
                  child: Icon(
                    Icons.done,
                    color: MyThemeData.primaryColor,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
