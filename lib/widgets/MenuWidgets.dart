import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:monoapp/pages/CardP.dart';
import 'package:monoapp/pages/MoreMenu.dart';
import 'package:monoapp/pages/Profile.dart';
import 'package:monoapp/pages/main_page.dart';
class MenuWidgets extends StatelessWidget {
  final Color colorswap;
  final Color colorAccount;
  final Color creditcard;
  final Color colorHome;
  final Color colorMenu;

  const MenuWidgets({
    required this.colorswap,
    required this.creditcard,
    required this.colorAccount,
    required this.colorHome,
    required this.colorMenu,
  });

  @override
  Widget build(BuildContext context) {
    double size = 28;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 50,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color.fromRGBO(248, 248, 248, 1)),
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () => Get.to(Profile()),
              child: Icon(
                MaterialCommunityIcons.account_settings_outline,
                color: colorAccount,
                size: size,
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(CardP()),
              child: Icon(
                MaterialCommunityIcons.credit_card_fast_outline,
                color: creditcard,
                size: size,
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(MoreMenu()),
              child: Icon(
                Ionicons.ios_apps,
                color: colorMenu,
                size: size,
              ),
            ),
            Icon(
              MaterialIcons.swap_horiz,
              color: colorswap,
              size: size,
            ),
            GestureDetector(
              onTap: () => Get.to(MAinPAge()),
              child: Icon(
                Ionicons.home_outline,
                color: colorHome,
                size: size,
              ),
            ),
          ])),
    );
  }
}