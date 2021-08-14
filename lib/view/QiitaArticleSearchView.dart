import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/QiitaArticleController.dart';

class QiitaArticleSearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read(articleProvider.notifier);
    final state = context.read(articleProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('検索'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: TextEditingController(text: state.keyword),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: 'キーワード',
              ),
              onFieldSubmitted: (value) async {
                await viewModel.setQuery(value);
                viewModel.getArticles();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
