import 'package:electronics_market/data/model/product.dart';
import 'package:electronics_market/data/repository/data_repository.dart';
import 'package:flutter/material.dart';

class DataController extends ChangeNotifier {
  DataRepository dataRepository = DataRepository();
  List<Product> listCategory = [];

  void updateListCategory(String id) {
    var productsCopy =
        List<Product>.from(dataRepository.products); // Nusxa olish

    if (id != '0') {
      listCategory.clear();
      for (var itemProduct in productsCopy) {
        if (itemProduct.categoryId == id) {
          listCategory.add(itemProduct);
        }
      }
    } else {
      listCategory = productsCopy;
    }

    notifyListeners();
  }
}
