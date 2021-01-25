import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final inactiveIconColor = Color(0xffb6b6b6);
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffDADADA).withOpacity(0.15),
              )
            ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Shop Icon.svg',
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  color: MenuState.favourite == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Chat bubble Icon.svg',
                  color: MenuState.message == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inactiveIconColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                },
              ),
            ],
          ),
        ));
  }
}
