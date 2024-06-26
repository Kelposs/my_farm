import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_farm/app/core/theme.dart';
import 'package:my_farm/app/core/widgets/padding.dart';
import 'package:my_farm/app/core/widgets/sizedbox.dart';
import 'package:my_farm/app/core/widgets/svg_picture.dart';
import 'package:my_farm/app/core/widgets/text.dart';
import 'package:my_farm/app/modules/profile/controllers/profile_controller.dart';
import 'package:my_farm/app/routes/app_pages.dart';

import '../../../../core/assets.dart';

class ProfileHeader extends GetView<ProfileController> {
  const ProfileHeader({super.key});

  void _edit() {
    Get.toNamed(Routes.PROFILE_EDIT);
  }

  @override
  Widget build(BuildContext context) {
    return CPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 28,
      ),
      child: Material(
        color: primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          side: BorderSide(
            color: primary,
          ),
        ),
        child: CPadding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(90),
                ),
                child: Image.asset(
                  imgProfile,
                  height: 68,
                  width: 68,
                  fit: BoxFit.cover,
                ),
              ),
              const CSizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Kelpos Soplek",
                    style: CFonts.inter(6, 16),
                    color: white,
                  ),
                  CText(
                    "123456789",
                    style: CFonts.inter(
                      4,
                      12,
                    ),
                    color: white,
                    height: 2,
                  ),
                  CText(
                    "k.p@gmail.com",
                    style: CFonts.inter(4, 12),
                    color: white,
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: _edit,
                child: const CPadding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CSvg(
                      icEdit,
                      color: white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
