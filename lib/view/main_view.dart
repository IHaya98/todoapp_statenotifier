import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/util/bottom_navigation/bottom_navigation_controller.dart';
import 'package:todoapp/util/bottom_navigation/bottom_navigation_view.dart';
import 'package:todoapp/util/drawer/drawer_view.dart';
import 'package:todoapp/view/counter_view.dart';
import 'package:todoapp/view/home_view.dart';
import 'package:todoapp/view/search_view.dart';

// Since the state was moved to the view model, this is now a StatelessWidget.
class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => MainView(),
    );
  }

  final List<Widget> _pageList = [
    const HomeView(),
    const SearchView(),
    const CoutnerView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, watch, child) {
            return Text(watch(bottomNavigationProvider).title == ''
                ? 'ホーム'
                : watch(bottomNavigationProvider).title);
          },
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {},
        //     child: Text('更新する'),
        //     style: TextButton.styleFrom(
        //       primary: Colors.white,
        //     ),
        //   ),
        // ],
      ),
      drawer: const DrawerView(),
      body: Consumer(builder: (context, watch, child) {
        return _pageList[watch(bottomNavigationProvider).selectedTabIndex];
      }),
      bottomNavigationBar: const BottomNavigationView(),
    );
  }
}
