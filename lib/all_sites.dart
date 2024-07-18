import 'package:tourist_app/food_sites.dart';
import 'package:tourist_app/historical_sites.dart';
import 'package:tourist_app/park_sites.dart';
import 'package:tourist_app/religious_sites.dart';
import 'package:tourist_app/shopping_sites.dart';

class AllSites{
  static List<dynamic> allSites = [
    Historical(),
    ParkSites(),
    ReligiousSites(),
    ShoppingSites(),
    FoodSites(),
  ];
}