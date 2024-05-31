// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.



class Category {
  const Category({
    required this.name,
  });

  // A function taking a BuildContext as input and
  // returns the internationalized name of the category.
  final String  name;
}
Category categoryAll = const Category(
  name: 'All',
);

Category categoryWine = const Category(
  name: 'Wines',
);

Category categoryBeer = const Category(
  name: 'Beer',
);

Category categoryVodka = const Category(
  name: 'Vodka',
);

Category categoryRum = const Category(
  name: 'Rum',
);

Category categoryWhisky = const Category(
  name: 'Whisky',
);

List<Category> categories = [
  //categoryAll,
  categoryWine,
  categoryBeer,
  categoryVodka,
  categoryRum,
  categoryWhisky,
];

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
    this.assetAspectRatio = 1,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final double assetAspectRatio;

  // A function taking a BuildContext as input and
  // returns the internationalized name of the product.
  final String  name;

  final int price;

  String get assetName => '$id-0.jpg';

  String get assetPackage => 'shrine_images';
}
