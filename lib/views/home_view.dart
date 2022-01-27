import 'package:flutter/material.dart';
import 'package:newscloud/view_models/list_of_artical_view_models.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          await Provider.of<ArticalsListViewModel>(context, listen: false)
              .fetchArticalByCoun();
          print(Provider.of<ArticalsListViewModel>(context, listen: false)
              .articaleListByCoun);
        },
      ),
    );
  }
}
