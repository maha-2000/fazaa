import 'package:fazaa/pages/donations_page.dart';
import 'package:fazaa/pages/instructions.dart';
import 'package:fazaa/pages/map_page.dart';
import 'package:fazaa/pages/reporting_page.dart';

final List<Map<String, dynamic>> pageDetails = [
  {
    "pageName": const MapPage(),
    //"title" : ""
  },
  {
    "pageName": const Instructions(),
    "title " : "الإرشادات",
  },
  {
    "pageName": const ReportingPage(),
  },
  {
    "pageName": const DonationsPage(),
  },
];
