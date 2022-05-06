import 'package:may_ui_test/src/data/entities/product_entity.dart';
import 'package:may_ui_test/src/data/entities/product_list.dart';

List<ProductListEntity> generateMockData() {
  final salesList = ProductListEntity(items: [
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Tulips',
        isFavorited: true,
        discount: 0.57,
        title: 'Bouquet of roses and hibiscus')
  ], listTitle: 'Sales');

  final popular = ProductListEntity(items: [
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Tulips',
        isFavorited: true,
        discount: 0.57,
        title: 'Bouquet of roses and hibiscus')
  ], listTitle: 'Popular');
  final roses = ProductListEntity(items: [
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Tulips',
        isFavorited: true,
        discount: 0.57,
        title: 'Bouquet of roses and hibiscus')
  ], listTitle: 'Roses');
  final bouquets = ProductListEntity(items: [
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Bouquet',
        title: 'Bouquet of roses and hibiscus'),
    const ProductEntity(
        price: 3.50,
        category: 'Tulips',
        isFavorited: true,
        discount: 0.57,
        title: 'Bouquet of roses and hibiscus')
  ], listTitle: 'Bouquets');
  return [salesList, popular, roses, bouquets, bouquets];
}
