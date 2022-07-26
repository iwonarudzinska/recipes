import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 1500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://img.freepik.com/darmowe-wektory/recznie-malowane-akwarela-pastelowe-niebo-w-tle_23-2148902771.jpg?w=2000',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const Icon(Icons.delete),
        ],
      ),
    );
  }
}
