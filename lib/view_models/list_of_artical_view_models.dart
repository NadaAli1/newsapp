import 'package:flutter/cupertino.dart';
import 'package:newscloud/models/artical_models.dart';
import 'package:newscloud/services/artical_services.dart';

class ArticalsListViewModel extends ChangeNotifier {
  List<Artical> _articaleListByCoun = [];
  List<Artical> _articaleListByCate = [];

  Future<void> fetchArticalByCoun() async {
    _articaleListByCoun = await NewsApi().fetchArticals();
    notifyListeners();
  }

  Future<void> fetchArticalByCate(String category) async {
    _articaleListByCate = await NewsApi().fetchArticalsByCategory(category);
    notifyListeners();
  }

  List<Artical> get articaleListByCoun => _articaleListByCoun;
  List<Artical> get articaleListByCate => _articaleListByCate;
}
