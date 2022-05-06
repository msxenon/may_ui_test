import 'package:flutter/material.dart';
import 'package:may_ui_test/src/data/mock_products_list.dart';
import 'package:may_ui_test/src/home_page/home_page_header.dart';
import 'package:may_ui_test/src/ui/bottom_bar/buttom_bar.dart';
import 'package:may_ui_test/src/ui/custom_sliver_app_bar.dart';
import 'package:may_ui_test/src/ui/product_tile.dart';
import 'package:may_ui_test/src/utils/constant_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final mockList = generateMockData();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(),
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          const HomePageHeader(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Categories',
                    style: theme.textTheme.headline6,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu)),
                      ...List.generate(
                        mockList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            label: Text(
                              mockList[index].listTitle,
                              style: TextStyle(
                                  color: index == 0 ? Colors.white : null),
                            ),
                            backgroundColor: index == 0
                                ? Colors.green
                                : AppColorPalette.lightGrey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(mockList.length, (sectionIndex) {
            return SliverList(
              delegate: SliverChildBuilderDelegate((context, itemIndex) {
                if (itemIndex == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16)
                        .copyWith(top: 20, bottom: 5),
                    child: Text(
                      mockList[sectionIndex].listTitle,
                      style: theme.textTheme.bodyText1,
                    ),
                  );
                }
                return ProductTile(
                  productEntity: mockList[sectionIndex].items[itemIndex - 1],
                  index: itemIndex + sectionIndex,
                );
              }, childCount: mockList[sectionIndex].items.length + 1),
            );
          })
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
