import 'package:flutter/material.dart';
import 'package:may_ui_test/src/pages/home_page/home_page.dart';
import 'package:may_ui_test/src/ui/icons/search_icon.dart';
import 'package:may_ui_test/src/utils/constant_colors.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverAppBar(
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 66),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/flower_4.png',
                  fit: BoxFit.contain,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'assets/images/bouquet_1f490 1.png',
                              fit: BoxFit.contain,
                              height: 66,
                              width: 66,
                            ),
                          ),
                        ),
                        radius: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Opening hours · 07:00–21:00 ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Jenfelder Str. 2 · 1,45 km',
                            style: theme.textTheme.bodyText2?.copyWith(
                                color: theme.textTheme.caption!.color),
                          ),
                          const Chip(
                            label: Text('Supermarkt'),
                            backgroundColor: AppColorPalette.darkGrey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      title: const Text('Name Flower-Shop'),
      forceElevated: true,
      elevation: 2,
      centerTitle: true,
      pinned: true,
      expandedHeight: 200,
      actions: [
        const SearchIcon(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
      ],
      // expandedHeight: ,
    );
  }
}
