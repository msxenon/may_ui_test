import 'package:may_ui_test/src/data/entities/product_entity.dart';

class ProductListEntity {
  ProductListEntity({required this.items, required this.listTitle});

  final List<ProductEntity> items;
  final String listTitle;
}
