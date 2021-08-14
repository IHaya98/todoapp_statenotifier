import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/util/bottom_navigation/BottomNavigationController.dart';

class BottomNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      return SizedBox(
        height: 100,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'お気に入り',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.web),
              label: 'Qitta',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: watch(bottomNavigationProvider).selectedTabIndex,
          onTap: context.read(bottomNavigationProvider.notifier).onTabTapped,
        ),
      );
    });
  }
}
