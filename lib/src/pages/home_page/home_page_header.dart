import 'package:flutter/material.dart';
import 'package:may_ui_test/src/ui/icons/asset_icon_button.dart';
import 'package:may_ui_test/src/utils/constant_colors.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1, color: AppColorPalette.lightGrey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const AssetIconButton(
                              assetLink: 'assets/icons/clipboard_1f4cb 1.png'),
                          Text(
                            'Order',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            '0 open',
                            style: theme.textTheme.bodyText2?.copyWith(
                                color: theme.textTheme.caption!.color),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1, color: AppColorPalette.lightGrey),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const AssetIconButton(
                              assetLink:
                                  'assets/icons/spiral-calendar_1f5d3-fe0f 1.png'),
                          Text(
                            '12:03',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            '12:00 - 14:00',
                            style: theme.textTheme.bodyText2?.copyWith(
                                color: theme.textTheme.caption!.color),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Card(
                    color: AppColorPalette.lightGrey,
                    elevation: 0,
                    child: SizedBox(
                      height: (MediaQuery.of(context).size.width / 2) - 30,
                      child: Center(
                        child: Text(
                          'Image product',
                          style: theme.textTheme.bodyText2
                              ?.copyWith(color: theme.textTheme.caption?.color),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: AppColorPalette.lightGrey,
                    elevation: 0,
                    child: SizedBox(
                      height: (MediaQuery.of(context).size.width / 2) - 30,
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              'Image product',
                              style: theme.textTheme.bodyText2?.copyWith(
                                  color: theme.textTheme.caption?.color),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              elevation: 0,
                              child: Center(
                                heightFactor: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('other equipment'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: AppColorPalette.lightGrey,
                    child: SizedBox(
                      height: 180,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
