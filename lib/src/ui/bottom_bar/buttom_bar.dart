import 'package:flutter/material.dart';
import 'package:may_ui_test/src/ui/icons/asset_icon_button.dart';
import 'package:may_ui_test/src/ui/icons/home_icon.dart';
import 'package:may_ui_test/src/ui/icons/menu_icon.dart';
import 'package:may_ui_test/src/ui/icons/search_icon.dart';
import 'package:may_ui_test/src/utils/constant_colors.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double additionalBottomPadding =
        MediaQuery.of(context).padding.bottom;
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: kBottomNavigationBarHeight + additionalBottomPadding),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Theme.of(context).bottomAppBarColor,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  spreadRadius: 0,
                  offset: Offset(0, 0))
            ]),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HomeIcon(),
                const SearchIcon(),
                const MenuIcon(),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  color: AppColorPalette.lightGrey,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10)
                            .copyWith(left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AssetIconButton(
                            assetLink: 'assets/icons/basket.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '100,70 €',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              '110 items  118,72kg',
                              style: Theme.of(context).textTheme.caption,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
