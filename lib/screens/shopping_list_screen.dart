import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meals_udemy/widgets/category_widget.dart';

class ShoppingListScreen extends StatelessWidget {
  ShoppingListScreen({
    Key? key,
  }) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 137, 146),
        title: const Text(
          'Shopping List',
          style: TextStyle(
            fontSize: 40,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 224, 50, 50),
        onPressed: () {
          FirebaseFirestore.instance.collection('categories').add(
            {
              'title': controller.text,
            },
          );
          controller.clear();
        },
        child: const Text(
          'ADD',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('categories').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }
            final documents = snapshot.data!.docs;
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1557821552-17105176677c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: [
                  for (final document in documents) ...[
                    Dismissible(
                      key: ValueKey(document.id),
                      background: const DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 32,
                            ),
                            child: Icon(
                              Icons.delete,
                            ),
                          ),
                        ),
                      ),
                      confirmDismiss: (direction) async {
                        return direction == DismissDirection.endToStart;
                      },
                      onDismissed: (_) {
                        FirebaseFirestore.instance
                            .collection('categories')
                            .doc(document.id)
                            .delete();
                      },
                      child: CategoryWidget(
                        document['title'],
                      ),
                    ),
                  ],
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 40,
                    color: const Color.fromARGB(255, 107, 137, 146),
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Write what to buy',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.amber,
                      ),
                      cursorColor: Colors.red,
                      controller: controller,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
