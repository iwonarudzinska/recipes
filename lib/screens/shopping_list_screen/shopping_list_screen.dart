import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_udemy/app/enums/enums.dart';
import 'package:meals_udemy/remote%20data%20sources/shopping_list_screen_remote_data_source.dart';
import 'package:meals_udemy/repositories/shopping_list_screen_repository.dart';
import 'package:meals_udemy/screens/shopping_list_screen/cubit/shopping_list_screen_cubit.dart';
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
      floatingActionButton: BlocProvider(
        create: (context) => ShoppingListScreenCubit(
          ShoppingListScreenRepositories(
            ShoppingListScreenRemoteDataSource(),
          ),
        ),
        child: BlocBuilder<ShoppingListScreenCubit, ShoppingListScreenState>(
          builder: (context, state) {
            return FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              onPressed: () {
                context.read<ShoppingListScreenCubit>().add(
                      title: controller.text,
                    );
                controller.clear();
              },
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            );
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => ShoppingListScreenCubit(
          ShoppingListScreenRepositories(
            ShoppingListScreenRemoteDataSource(),
          ),
        )..start(),
        child: BlocBuilder<ShoppingListScreenCubit, ShoppingListScreenState>(
          builder: (context, state) {
            if (state.status == Status.error) {
              final errorMessage = state.errorMessage ?? 'Something went wrong';
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.amber,
              ));

              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              }
            }
            final itemModels = state.documents;
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
                  for (final itemModel in itemModels) ...[
                    BlocBuilder<ShoppingListScreenCubit,
                        ShoppingListScreenState>(
                      builder: (context, state) {
                        return Dismissible(
                          key: ValueKey(itemModel.id),
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
                            context.read<ShoppingListScreenCubit>().delete(
                                  document: itemModel,
                                  id: itemModel.id,
                                );
                          },
                          child: CategoryWidget(
                            itemModel.title,
                          ),
                        );
                      },
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
          },
        ),
      ),
    );
  }
}
