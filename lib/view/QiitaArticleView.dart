import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/QiitaArticleController.dart';
import 'package:todoapp/view/QiitaArticleDetailView.dart';
import 'package:todoapp/view/QiitaArticleSearchView.dart';

class ArticlesView extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => ArticlesView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Articles(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => QiitaArticleSearchView(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Icon(Icons.search),
      ),
    );
  }
}

class _Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read(articleProvider.notifier);
    final state = context.read(articleProvider);

    if (state.articles.length == 0) {
      viewModel.getArticles();
      if (!state.hasNext) return Text('検索結果なし');
      return LinearProgressIndicator();
    }

    return RefreshIndicator(
      child: ListView.builder(
        itemCount: state.articles.length,
        itemBuilder: (context, int index) {
          if (index == (state.articles.length - 1) && state.hasNext) {
            if (!state.hasNext) return Text('検索結果なし');
            return const LinearProgressIndicator();
          }
          return _articleItem(context, state.articles[index]);
        },
      ),
      onRefresh: () async {
        viewModel.refreshArticles();
      },
    );
  }

  Widget _articleItem(context, article) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: const Border(
            bottom: const BorderSide(
              color: const Color(0x1e333333),
              width: 1,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _articleUser(article.user),
            SizedBox(
              height: 10.0,
            ),
            Text(article.title),
            SizedBox(
              height: 10.0,
            ),
            Wrap(
              spacing: 7.5,
              children: <Widget>[
                for (int i = 0; i < article.tags.length; i++)
                  _articleTag(article.tags[i])
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            _articleCreatedAt(article.createdAt),
          ],
        ),
      ),
      onTap: () {
        if (Platform.isAndroid || Platform.isIOS) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => QiitaArticleDetailView(
                article: article,
              ),
            ),
          );
        } else {
          return;
        }
      },
    );
  }

  Widget _articleUser(user) {
    final userId = user.id;
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(user.profileImageUrl),
          radius: 12.0,
          child: Text(''),
        ),
        SizedBox(width: 8.0),
        Text('@$userId'),
      ],
    );
  }

  Widget _articleTag(tag) {
    return GestureDetector(
      child: Container(
        child: Text(
          tag['name'],
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      onTap: () {
        print(tag['name']);
      },
    );
  }

  Widget _articleCreatedAt(createdAt) {
    DateFormat format = DateFormat('yyyy-MM-dd');
    String date = format.format(DateTime.parse(createdAt).toLocal());

    return Container(
      width: double.infinity,
      child: Text(
        '$dateに投稿',
        textAlign: TextAlign.right,
      ),
    );
  }
}
