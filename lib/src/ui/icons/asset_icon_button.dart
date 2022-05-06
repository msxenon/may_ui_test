import 'package:flutter/material.dart';

class AssetIconButton extends StatelessWidget {
  const AssetIconButton({required this.assetLink, Key? key}) : super(key: key);
  final String assetLink;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        assetLink,
        fit: BoxFit.contain,
        width: 20,
        height: 20,
      ),
    );
  }
}
