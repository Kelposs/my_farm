import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_farm/app/core/theme.dart';
import 'package:my_farm/app/core/widgets/image_picture.dart';
import 'package:my_farm/app/core/widgets/padding.dart';
import 'package:my_farm/app/core/widgets/text.dart';
import 'package:my_farm/app/modules/home/views/components/home_header.dart';

import '../../../core/assets.dart';
import '../../../core/widgets/menu_card.dart';
import '../controllers/home_controller.dart';
import 'components/home_news.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        title: CPadding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CText(
                "Good Morning! ☀",
                style: CFonts.inter(4, 12),
              ),
              CText(
                "Kelpos Soplek!",
                style: CFonts.inter(6, 14),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CImg(imgLogo),
          ),
        ],
      ),
      body: CustomScrollView(
        controller: controller.scrollC,
        scrollDirection: Axis.vertical,
        slivers: [
          const HomeHeader(),
          SliverToBoxAdapter(
            child: CPadding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 20,
                right: 15,
                bottom: 5,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  width: 350,
                  height: 110.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.homeMenuItem.length,
                      itemBuilder: (_, index) {
                        final homeMenuItem = controller.homeMenuItem[index];

                        return MenuCard(
                          image: homeMenuItem.image,
                          title: homeMenuItem.title,
                        );
                      }),
                )
              ]),
            ),
          ),
          const HomeNews(),
        ],
      ),
    );
  }
}
