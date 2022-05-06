import 'package:flutter/material.dart';
import 'package:may_ui_test/src/data/entities/product_entity.dart';
import 'package:may_ui_test/src/ui/icons/asset_icon_button.dart';
import 'package:may_ui_test/src/utils/constant_colors.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    required this.productEntity,
    required this.index,
    Key? key,
  }) : super(key: key);
  final ProductEntity productEntity;
  final int index;
  @override
  Widget build(BuildContext context) {
    final bool hasDiscount = productEntity.discount != null;
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1, color: AppColorPalette.lightGrey),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: SizedBox(
        height: 170,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: AppColorPalette.lightGrey,
                child: Image.network(
                  'https://source.unsplash.com/random/300x300/?flower,$index',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          productEntity.category,
                          style: theme.textTheme.caption,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.favorite,
                          color: productEntity.isFavorited
                              ? Colors.red
                              : AppColorPalette.lightGrey,
                          size: 22,
                        )
                      ],
                    ),
                    Text(
                      productEntity.title,
                      style: theme.textTheme.bodyText1,
                    ),
                    Row(
                      children: List.generate(
                        productEntity.rating,
                        (index) => const Icon(
                          Icons.star_rate_rounded,
                          color: Color(0xffFFD42C),
                          size: 22,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: '${productEntity.price} € ',
                                  style: theme.textTheme.headline6?.copyWith(
                                      color: (hasDiscount
                                          ? Colors.red
                                          : Colors.black))),
                              if (hasDiscount)
                                TextSpan(
                                    text: '${productEntity.price} €',
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        decoration:
                                            TextDecoration.lineThrough)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Card(
                          elevation: 0,
                          color: Color(0xff244875),
                          child: AssetIconButton(
                            assetLink: 'assets/icons/basket_white.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
