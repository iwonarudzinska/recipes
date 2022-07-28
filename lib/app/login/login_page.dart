import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/app/core/enums.dart';
import 'package:meals/app/login/cubit/login_cubit.dart';
import 'package:meals/domain/models/meal.dart';
import 'package:meals/screens/tabs_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage(this.favoriteMeals, {Key? key}) : super(key: key);

  final List<Meal> favoriteMeals;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit()..start(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          final user = state.user;

          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Something went wrong';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.amber,
              ),
            );

            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator(),);
            }
          }
          if (user == null) {
            return Scaffold(
              body: ListView(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 110,
                            backgroundColor: Colors.lime,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icon/icon_foreground.png'),
                              radius: 100,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            isCreatingAccount == true ? 'Register' : 'Sign In',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: widget.emailController,
                            decoration: const InputDecoration(
                              hintText: 'E-mail',
                            ),
                          ),
                          TextField(
                            controller: widget.passwordController,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),
                          Text(errorMessage),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () async {
                              if (isCreatingAccount == true) {
                                try {
                                  await context
                                      .read<LoginCubit>()
                                      .createUserWithEmailAndPassword(
                                          widget.emailController.text,
                                          widget.passwordController.text);
                                } catch (error) {
                                  setState(
                                    () {
                                      errorMessage = error.toString();
                                    },
                                  );
                                }
                              } else {
                                try {
                                  await context
                                      .read<LoginCubit>()
                                      .signInWithEmailAndPassword(
                                          widget.emailController.text,
                                          widget.passwordController.text);
                                } catch (error) {
                                  setState(
                                    () {
                                      errorMessage = error.toString();
                                    },
                                  );
                                }
                              }
                            },
                            child: Text(
                              isCreatingAccount == true
                                  ? 'Register'
                                  : 'Sign In',
                            ),
                          ),
                          const SizedBox(height: 20),
                          if (isCreatingAccount == false) ...[
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    isCreatingAccount = true;
                                  },
                                );
                              },
                              child: const Text('Create an account'),
                            ),
                          ],
                          if (isCreatingAccount == true) ...[
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    isCreatingAccount = false;
                                  },
                                );
                              },
                              child: const Text('Already have an account?'),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return Scaffold(
            body: ListView(
              children: [
                SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 160,
                        backgroundColor: Colors.lime,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/icon/icon_foreground.png'),
                          radius: 150,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Application with various recipes.\n\nYou can add your favorite meals to the favorite food list.\n\nIn addition to the recipes, there is also a shopping list.\n\nThanks to it you will quickly add the ingredients you need.\n\nAnd when you bought, you can remove the ingredient.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          'You are logged in as ${user.email}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => TabsScreen(
                                    widget.favoriteMeals,
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              "Let's go",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<LoginCubit>().signOut();
                            },
                            child: const Text(
                              'Log out',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
