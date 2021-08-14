import 'package:flutter/material.dart';
import 'package:todoapp/model/qiita_article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QiitaArticleDetailView extends StatelessWidget {
  QiitaArticleDetailView({@required this.article});

  final QiitaArticle? article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          article!.title ?? '',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              initialUrl: article?.url,
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}
