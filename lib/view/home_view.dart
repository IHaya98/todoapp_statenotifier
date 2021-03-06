import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/user_controller.dart';
import 'package:todoapp/repository/fs_todo.dart';
import 'package:todoapp/view/todoregist_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const HomeView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildTodoList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            TodoRegistView.route(context),
          );
        },
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }

  Widget buildTodoList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('todo').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }
        return ListView(
          children: snapshot.data!.docs.map(
            (DocumentSnapshot document) {
              final data = document.data()! as Map<String, dynamic>;
              if (data['userid'] == context.read(userProvider).userid) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.task),
                          title: Text('${data['title']}'),
                          subtitle: Text('${data['detail']}'),
                        ),
                        const SizedBox(height: 12),
                        Text(
                            '????????????${DateFormat("yyyy???MM???dd???").format(data['deadline'].toDate())}'),
                        const SizedBox(height: 12),
                        Text('??????????????????${data['category']}'),
                        const SizedBox(height: 12),
                        Text('by ${context.read(userProvider).username}'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            favoriteButton(data),
                            const SizedBox(width: 20),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  TodoRegistView.routeUpdate(
                                    context,
                                    data['id'],
                                    data['title'],
                                    data['detail'],
                                    data['deadline'],
                                    data['category'],
                                  ),
                                );
                              },
                              child: const Text('????????????'),
                              style: TextButton.styleFrom(
                                primary: Colors.blue,
                              ),
                            ),
                            const SizedBox(width: 20),
                            TextButton(
                              onPressed: () {
                                FSTodo().deleteTodo(data['id'], context);
                              },
                              child: const Text('????????????'),
                              style: TextButton.styleFrom(
                                primary: Colors.blue,
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return const Card();
              }
            },
          ).toList(),
        );
      },
    );
  }

  Widget favoriteButton(Map<String, dynamic> data) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('todo')
          .doc(data['id'])
          .collection('favorite')
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshotDetail) {
        if (!snapshotDetail.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshotDetail.hasError) {
          return const Text('Something went wrong');
        }
        bool isFavorite = false;
        int favoriteCount = 0;
        snapshotDetail.data!.docs.map((DocumentSnapshot documentDetail) {
          final dataTest = documentDetail.data()! as Map<String, dynamic>;
          favoriteCount++;
          if (!isFavorite) {
            isFavorite =
                dataTest['userid'] == context.read(userProvider).userid;
          }
        }).toList();
        return ElevatedButton.icon(
          icon: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : Colors.black,
          ),
          label: Text(favoriteCount.toString()),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: isFavorite ? Colors.red : Colors.black,
          ),
          onPressed: () {
            isFavorite
                ? FSTodo().deleteFavorite(
                    data['id'], context.read(userProvider).userid)
                : FSTodo()
                    .addFavorite(data['id'], context.read(userProvider).userid);
          },
        );
      },
    );
  }
}
