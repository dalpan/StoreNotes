import 'package:flutter/material.dart';
import 'package:pencatat_keuangan/config/constant.dart';

class AppDrawer extends StatelessWidget {
  void goToDashboard(BuildContext context) {
    if (ModalRoute.of(context)!.settings.name == dashboardPage) {
      Navigator.of(context).pop();
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil(dashboardPage, (route) => false);
    }
  }

  void goToReport(BuildContext context) {
    if (ModalRoute.of(context)!.settings.name == reportPage) {
      Navigator.of(context).pop();
    } else {
      Navigator.of(context).pop();
      Navigator.of(context).pushNamed(reportPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        Text(
          " ",
          textAlign: TextAlign.center,
          style: textStyle(textColor: primarySolid),
        ),
        Image.asset(
          "assets/img/logo.png",
          height: 150,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Store Notes v1.0",
          textAlign: TextAlign.center,
          style: textStyle(textColor: primarySolid),
        ),
        ListTile(
          leading: Icon(
            Icons.insert_drive_file_outlined,
            color: (ModalRoute.of(context)!.settings.name == dashboardPage) ? whiteTextColor : primarySolid.withOpacity(0.8),
          ),
          selected: (ModalRoute.of(context)!.settings.name == dashboardPage) ? true : false,
          selectedTileColor: (ModalRoute.of(context)!.settings.name == dashboardPage) ? primarySolid.withOpacity(0.8) : whiteTextColor,
          title: Text(
            "Transaksi Hari ini",
            style: textStyle(textColor: (ModalRoute.of(context)!.settings.name == dashboardPage) ? whiteTextColor : primarySolid.withOpacity(0.8)),
          ),
          onTap: () => goToDashboard(context),
        ),
        ListTile(
          leading: Icon(
            Icons.date_range_outlined,
            color: (ModalRoute.of(context)!.settings.name == reportPage) ? whiteTextColor : primarySolid.withOpacity(0.8),
          ),
          selected: (ModalRoute.of(context)!.settings.name == reportPage) ? true : false,
          selectedTileColor: (ModalRoute.of(context)!.settings.name == reportPage) ? primarySolid.withOpacity(0.8) : whiteTextColor,
          title: Text(
            "Rekap Bulanan",
            style: textStyle(textColor: (ModalRoute.of(context)!.settings.name == reportPage) ? whiteTextColor : primarySolid.withOpacity(0.8)),
          ),
          onTap: () => goToReport(context),
        ),
      ],
    ));
  }
}
