import 'package:flutter/material.dart';
import 'package:islami_c9_str/hadeth_model.dart';

import 'my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.png",
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Card(
            margin: EdgeInsets.all(16),
            elevation: 12,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                borderSide: BorderSide(color: MyThemeData.primaryColor)),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                endIndent: 50,
                indent: 50,
                color: MyThemeData.primaryColor,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${args.content[index]}",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: MyThemeData.blackColor),
                  ),
                );
              },
              itemCount: args.content.length,
            ),
          ),
        ));
  }
}
