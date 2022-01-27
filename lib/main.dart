import 'package:flutter/material.dart';
import 'package:newscloud/view_models/list_of_artical_view_models.dart';
import 'package:newscloud/views/home_view.dart';
import 'package:provider/provider.dart';

main() => runApp(NewsCloud());

class NewsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticalsListViewModel>(
      create: (context) => ArticalsListViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NewsCloud',
        home: HomeView(),
      ),
    );
  }
}
