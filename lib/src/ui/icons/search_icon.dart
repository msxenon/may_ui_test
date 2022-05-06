import 'package:flutter/material.dart';
import 'package:may_ui_test/src/ui/icons/asset_icon_button.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AssetIconButton(assetLink: 'assets/icons/search.png');
  }
}
