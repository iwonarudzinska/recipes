import 'package:flutter/material.dart';
import 'package:meals/app/core/enums.dart';
import 'package:meals/domain/models/category.dart';
import 'package:meals/domain/models/meal.dart';

const dummycategories = [
  Category(
    id: 'c1',
    title: 'Vegetarian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Vegan',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Breakfast',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Brt',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

final dummymeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Vegetable Soup',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.themodernproper.com/billowy-turkey/production/posts/2020/Vegetable-Soup-8.jpg?w=667&auto=compress%2Cformat&fit=crop&dm=1600877034&s=baf3c0cfe3e305a6890220fe88c54b36',
    duration: 35,
    ingredients: [
      '1 Celery',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '1 Zucchini',
      'Green beans',
      'Spices (garlic, thyme)',
      '2 Canned tomatoes'
    ],
    steps: [
      'Sauté onions and celery until fragrant and translucent.',
      'Add the garlic, zucchini and green beans and give them a little sauté, too. ',
      'Pour in everything else and bring the pot of soup to a boil.',
      'Turn it to a low simmer and cover the pot.',
      'Simmer for about half an hour, until the vegetables are super tender.',
      'Eat! We like to serve it topped with lots of freshly grated Parmigiano and fresh basil.'
    ],
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Jacket spuds & homemade beans',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/134593081.jpg?tr=w-800,h-1066',
    duration: 60,
    ingredients: [
      '4 large Maris Piper potatoes',
      '1 red pepper',
      '1 bunch of spring onions',
      '1 head of broccoli , (375g)',
      '1 heaped teaspoon smoked paprika',
      '2 x 400 g tins of cannellini beans',
      '1 x 400 g tin of quality plum tomatoes',
      '80 g Cheddar cheese',
      '1 x 80 g bag of watercress, spinach & rocket',
      'olive oil',
      'Spices (sea salt, black pepper)'
    ],
    steps: [
      'Preheat the oven to 200°C/400°F/gas 6.',
      'Wash and scrub 4 large potatoes, dry well (this will ensure crispy skin once baked), then rub with 1 tablespoon of olive oil and season with sea salt.',
      'Using a fork, prick each potato a few times, then place directly on the shelves of the oven and bake for 1 hour (longer if your potatoes are particularly big), or until crispy on the outside and soft in the middle.',
      'Meanwhile, deseed 1 red pepper and trim 1 bunch of spring onions, then finely chop. Trim the tough end from 1 head of broccoli (375g), finely chop the stalk and slice the head apart into bite-sized florets.',
      'Drizzle 1 tablespoon of olive oil into a large casserole pan on a high heat, add the pepper, spring onion and broccoli stalk, then cook for 5 minutes, or until softened, stirring regularly.',
      'Stir in 1 heaped teaspoon of smoked paprika and cook for 1 further minute, then add 2 x 400g tins of cannellini beans (juices and all).',
      'Scrunch in 1 x 400g tin of plum tomatoes, pour in 1 tin’s worth of water, then bring to the boil. Season to perfection, then transfer to the oven and bake for 30 minutes, or until thickened and reduced.',
      'Toss the broccoli florets in 1 tablespoon of olive oil and scatter over the beans for the last 10 minutes. Remove from the oven and finely grate over 80g of cheese.',
      'Serve 1 x 80g bag of watercress, spinach & rocket on the side and toss with a little extra virgin olive oil, if you like, then serve alongside the beans and potatoes. Enjoy!'
    ],
  ),
  Meal(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Rocket & pistachio pesto pasta',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/134763338.jpg?tr=w-800,h-1066',
    duration: 20,
    ingredients: [
      '80 g wild rocket',
      '1/2 a clove of garlic',
      '50 g shelled unsalted pistachios',
      'olive oil',
      '25 g Parmesan cheese , plus extra to serve',
      '1 lemon',
      '320 g asparagus',
      '300 g dried linguine'
    ],
    steps: [
      'Pick 70g of wild rocket into a pestle and mortar, then bash to a paste with a pinch of sea salt.',
      'Peel and bash in ½ a clove of garlic, then pound in 50g of unshelled pistachios until fine. Muddle in 4 tablespoons of olive oil, finely grate in 25g of Parmesan, then squeeze in the juice of 1 lemon. Season to perfection with salt and black pepper, then taste and tweak the pesto to your liking.',
      'Cook 300g of dried linguine in a pan of boiling water according to the packet instructions, then drain, reserving a mugful of starchy cooking water.',
      'Meanwhile, snap off the woody ends from 320g of asparagus. Toss the pasta with the pesto, then using a speed-peeler, peel lengths of the asparagus into the pan, loosening with a splash of reserved cooking water, if needed.',
      'Drizzle with 1 tablespoon of olive oil, and finish with the remaining 10g of rocket and a fine grating of Parmesan. Delicious served with a crunchy salad.'
    ],
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Bright Radish Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/screen-shot-2022-04-22-at-1-31-25-pm-1650648779.png?crop=0.588xw:0.587xh;0.240xw,0.149xh&resize=980:*',
    duration: 20,
    ingredients: [
      '1 tsp. honey or agave if vegan',
      '1 1/2 tbsp. fresh Meyer lemon juice',
      'Kosher salt',
      '1 tsp. Dijon mustard',
      '2 tbsp. olive oil',
      '1 small shallot, finely chopped',
      '1 lb. mixed colored radishes, trimmed',
      '1/4 c. small fresh mint leaves (or large ones, torn)'
    ],
    steps: [
      'In small bowl, whisk together lemon juice, honey, and 1/2 teaspoon salt to dissolve.',
      'Whisk in mustard and oil, then stir in shallot.',
      'Very thinly slice radishes and arrange on platter.',
      'Drizzle with vinaigrette and top with mint.'
    ],
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'Sticky Tofu Bowl',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/tofu-1650643684.jpg?crop=0.485xw:0.486xh;0.240xw,0.285xh&resize=980:*',
    duration: 25,
    ingredients: [
      '1 c. rice',
      '12 oz. extra-firm silken tofu',
      '4 tbsp. oil, divided',
      '1 tsp. Chinese five-spice powder',
      'Kosher salt',
      '1 small English cucumber (thinly sliced)',
      '1 1/2 tbsp. rice vinegar',
      '1/4 c. reduced-sodium soy sauce',
      '8 oz. shiitake mushrooms (stemmed and cut into 1/4-inch pieces)',
      '1/4 c. reduced-sodium soy sauce',
      '1 tbsp. dark brown sugar',
      '2 tsp. chili garlic sauce',
      'Sliced scallions, sesame seeds, and cilantro, for serving'
    ],
    steps: [
      'Heat oven to 450°F. Cook rice per package directions.',
      'Gently pat tofu dry with paper towels. On rimmed baking sheet, break into small pieces. Drizzle with 2 tablespoons oil, then season with five-spice powder and 1/4 teaspoon salt; gently toss to combine. Arrange in even layer; roast 10 minutes.',
      'Meanwhile, in bowl, toss cucumber with vinegar and 1/4 teaspoon salt. Set aside.',
      'In medium bowl, toss mushrooms with remaining 2 tablespoons oil and 1/4 teaspoon salt, scatter over tofu, then gently mix to combine. Continue roasting until golden brown and crisp, 8 to 10 minutes more.',
      'In same bowl, whisk together soy sauce, sugar, and chili garlic sauce. Pour over tofu mixture and roast 2 minutes.',
      'Serve tofu and mushrooms over rice along with cucumber, scallions, sesame seeds, and cilantro.'
    ],
  ),
  Meal(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Heirloom Tomato Salad',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/heirloom-tomato-salad-ghk-1529601092.jpg?crop=0.9993197278911565xw:1xh;center,top&resize=980:*',
    duration: 15,
    ingredients: [
      '1/4 c. olive oil',
      '2 tbsp. Champagne vinegar',
      '1 tsp. honey or agave',
      'Kosher salt',
      '1 pt. mixed-color cherry or grape tomatoes, halved',
      'Pepper',
      '2 tbsp. finely chopped chives, plus more for serving',
      '1 lb. heirloom tomatoes, some sliced and some cut into wedges',
      'Small basil leaves, for serving'
    ],
    steps: [
      'In medium bowl, whisk together oil, vinegar, honey and 1/2 teaspoon each salt and pepper.',
      'Add cherry tomatoes and chives and toss to combine.',
      'Arrange heirloom tomatoes on plate and sprinkle with 1/4 teaspoon each salt and pepper.',
      'Spoon cherry tomato mixture on top.',
      'Top with additional chives and basil leaves.'
    ],
  ),
  Meal(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Roasted Potato and Chorizo Hash',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hash-1650636909.jpg?crop=0.594xw:0.594xh;0.218xw,0.187xh&resize=980:*',
    duration: 35,
    ingredients: [
      '1 medium red onion, cut into 1/4-inch-thick wedges',
      '1 large sweet potato (about 12 oz.), peeled and cut into 3/4-inch chunks',
      '1 yellow potato (about 8 oz.), cut into 3/4-inch chunks',
      '1 poblano pepper, cut into thin 1-inch pieces',
      '4 large cloves garlic, smashed',
      '2 tbsp. olive oil ',
      'Kosher salt and pepper',
      '6 oz. fresh chorizo, casings removed',
      '4 large eggs',
      '2 oz. extra-sharp Cheddar, coarsely grated',
      'Warm tortillas, for serving'
    ],
    steps: [
      'Heat oven to 425°F.',
      'On large rimmed baking sheet, toss onion, potatoes, poblano, and garlic with oil and 1/4 teaspoon each salt and pepper. Arrange in even layer and roast until golden brown and tender, 25 to 30 minutes.',
      'While vegetables roast, heat large nonstick skillet on medium. ',
      'Add chorizo and cook, breaking up into tiny pieces, until browned and crisp around edges, 5 to 6 minutes; transfer to bowl.',
      'Add eggs to skillet and cook to desired doneness, 3 to 4 minutes for slightly runny yolks.',
      'Toss chorizo with vegetables, then scatter with Cheddar. Return to oven to melt if needed. Serve with eggs and tortillas if desired.'
    ],
  ),
  Meal(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'Sausage and Egg Sandwiches',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sausage-and-egg-sandwiches-1650992359.jpg?crop=0.565xw:0.565xh;0.177xw,0.428xh&resize=980:*',
    duration: 45,
    ingredients: [
      '4 tsp. olive oil, divided',
      '2 thin slices red onion',
      '12 oz. sweet Italian sausage (casings removed)',
      '2 oz. extra-sharp Cheddar cheese, coarsely grated',
      '4 large eggs',
      '4 English muffins, split and toasted',
      '6 sweet piquante peppers, sliced (we used Peppadews)',
      '1/4 c. flat-leaf parsley',
    ],
    steps: [
      'Heat 2 tsp oil in large cast-iron skillet on medium. Add onion and cook 3 minutes.',
      'With wet hands, shape sausage into four 1/4-inch-thick patties, add to skillet with onion, and increase heat to medium-high. Flip onion and cook until just tender, 2 to 3 minutes more.',
      'Cook patties until browned, 2 to 3 minutes, then flip.',
      'Separate onion slices into rings and arrange on top of patties, then top with Cheddar and continue cooking until sausage is cooked through, 2 to 3 minutes more.',
      'Meanwhile, heat remaining 2 teaspoons olive oil in large nonstick skillet on medium and cook eggs to desired doneness, 4 to 5 minutes for runny yolks. Top bottom halves of muffins with sausage, then eggs, pepper slices, and parsley.'
    ],
  ),
  Meal(
    id: 'm10',
    categories: [
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
  ),
];
