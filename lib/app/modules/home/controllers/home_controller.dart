import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_farm/app/data/models/home_item_model.dart';

import '../../../core/assets.dart';

class HomeController extends GetxController {
  final scrollC = ScrollController();

  final homeMenuItem = <HomeMenuItemModel>[
    HomeMenuItemModel(
      title: "Harvest",
      image: imgHarvest,
    ),
    HomeMenuItemModel(
      title: "Fertilizer",
      image: imgFertilizer,
    ),
    HomeMenuItemModel(
      title: "Water",
      image: imgSprinkler,
    ),
    HomeMenuItemModel(
      title: "Report",
      image: imgReport,
    ),
  ];
}
