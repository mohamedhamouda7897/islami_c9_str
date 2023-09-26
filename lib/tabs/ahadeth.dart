import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_str/hadeth_details.dart';
import 'package:islami_c9_str/hadeth_model.dart';
import 'package:islami_c9_str/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_bg.png"),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!
          .ahadeth),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: MyThemeData.primaryColor,
                endIndent: 50,
                indent: 50,
                thickness: 1,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName
                    ,
                    arguments: allAhadeth[index]);
                  },
                  child: Text(
                    allAhadeth[index].title,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: allAhadeth.length,
            ),
          )
        ],
      ),
    );
  }

  void loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadethFile) {
      List<String> ahadethList = ahadethFile.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> contentLines = hadethOneLines;
        print(title);
        print(i);
        HadethModel hadethModel = HadethModel(title, contentLines);
        allAhadeth.add(hadethModel);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}
