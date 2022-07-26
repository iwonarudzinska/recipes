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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Shopping List',
          style: TextStyle(
            fontSize: 40,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          FirebaseFirestore.instance.collection('categories').add(
            {
              'title': controller.text,
            },
          );
          controller.clear();
        },
        child: Text(
          'ADD',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
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
                    'https://media.istockphoto.com/photos/watercolor-textured-background-picture-id887755698?k=20&m=887755698&s=612x612&w=0&h=UcvMcQg07D_WfBT88iOWWXMV5WMRXRM8nqJRXcySUNA=',
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
                    color: Theme.of(context).colorScheme.primary,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Write what to buy',
                        labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.secondary,
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
