import 'package:meals/app/core/enums.dart';
import 'package:meals/domain/models/category.dart';
import 'package:meals/domain/models/meal.dart';

const dummycategories = [
  Category(
    id: 'c1',
    title: 'Vegetarian',
  ),
  Category(
    id: 'c2',
    title: 'Vegan',
  ),
  Category(
    id: 'c3',
    title: 'Breakfast',
  ),
  Category(
    id: 'c4',
    title: 'Quick Meat Recipes',
  ),
  Category(
    id: 'c5',
    title: 'Italian',
  ),
  Category(
    id: 'c6',
    title: 'Seafood',
  ),
  Category(
    id: 'c7',
    title: 'French',
  ),
  Category(
    id: 'c8',
    title: 'Fish',
  ),
  Category(
    id: 'c9',
    title: 'Desserts',
  ),
  Category(
    id: 'c10',
    title: 'Cocktails',
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
      'Preheat the oven to 200°C/400°F.',
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
      '½ a clove of garlic',
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
      '1 ½ tbsp. fresh Meyer lemon juice',
      'Kosher salt',
      '1 tsp. Dijon mustard',
      '2 tbsp. olive oil',
      '1 small shallot, finely chopped',
      '1 mixed colored radishes, trimmed',
      'small fresh mint leaves (or large ones, torn)'
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
      '1 rice',
      '12 tofu',
      '4 tbsp. oil, divided',
      '1 tsp. Chinese five-spice powder',
      'Kosher salt',
      '1 small English cucumber (thinly sliced)',
      '1 /½ tbsp. rice vinegar',
      '½ reduced-sodium soy sauce',
      '8 shiitake mushrooms (stemmed and cut into ½-inch pieces)',
      '½ reduced-sodium soy sauce',
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
      'olive oil',
      '2 tbsp. Champagne vinegar',
      '1 tsp. honey or agave',
      'Kosher salt',
      '1 mixed-color cherry or grape tomatoes, halved',
      'Pepper',
      '2 tbsp. finely chopped chives, plus more for serving',
      '1 heirloom tomatoes, some sliced and some cut into wedges',
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
      '1 ½ Cups all-purpose Flour',
      '3 ½ Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 ½ cups Milk',
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
      '1 large sweet potato, peeled and cut into 3/4-inch chunks',
      '1 yellow potato, cut into 3/4-inch chunks',
      '1 poblano pepper, cut into thin 1-inch pieces',
      '4 large cloves garlic, smashed',
      '2 tbsp. olive oil ',
      'Kosher salt and pepper',
      '6 oz. fresh chorizo, casings removed',
      '4 large eggs',
      '2 extra-sharp Cheddar, coarsely grated',
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
      '12 sweet Italian sausage (casings removed)',
      '2 extra-sharp Cheddar cheese, coarsely grated',
      '4 large eggs',
      '4 English muffins, split and toasted',
      '6 sweet piquante peppers, sliced (we used Peppadews)',
      '½  flat-leaf parsley',
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
      'c4',
    ],
    title: 'Grilled Steak with Parsley-Parmesan Salad',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://assets.bonappetit.com/photos/57ad4b5253e63daf11a4dda1/1:1/w_1920,c_limit/grilled-steak-with-parsley-parmesan-salad.jpg',
    duration: 30,
    ingredients: [
      '1 ½ pound flatiron steak',
      '2 cups fresh flat-leaf parsley leaves',
      '2 oz. Parmesan, shaved',
      '3 tablespoons olive oil, divided, plus more for drizzling',
      'Kosher salt and freshly ground black pepper',
      '1 tablespoon fresh lemon juice'
    ],
    steps: [
      'Rub steak with 2 Tbsp. oil; season generously with salt and pepper. Let sit at room temperature 30 minutes.',
      'Prepare a grill for medium-high heat; oil grill grate. Grill steak to desired doneness, 5–7 minutes per side for medium-rare. Let rest 5 minutes before slicing against the grain.',
      'Meanwhile, toss parsley, Parmesan, lemon juice, and remaining 1 Tbsp. oil in a medium bowl; season with salt, pepper, and more lemon juice, if desired. Serve steak topped with parsley-Parmesan salad.'
    ],
  ),
  Meal(
    id: 'm11',
    categories: [
      'c4',
    ],
    title: 'Pork Tonkatsu with Watermelon-Tomato Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://assets.bonappetit.com/photos/57afc6b4f1c801a1038bd466/master/w_1280,c_limit/pork-tonkatsu-with-watermelon-salad.jpg',
    duration: 30,
    ingredients: [
      '2 cubes watermelo',
      '2 cups cherry tomatoes, halved',
      '2 cups (lightly packed) baby arugula',
      '1 cup fresh flat-leaf parsley leaves',
      '1 cup extra-virgin olive oil',
      '2 tablespoons Dijon mustard, divided',
      '1 tablespoon fresh lemon juice plus 4 lemon wedges',
      '2 large eggs',
      '2 cups panko (Japanese breadcrumbs)',
      'Spices',
      '4-ounce boneless center-cut pork chops, pounded to 1/8 thickness',
      '6 tablespoons vegetable oil, divided'
    ],
    steps: [
      'Combine first 4 ingredients in a large bowl. Whisk olive oil, 1 tablespoon mustard, and juice in a small bowl. Season dressing with salt and pepper. Set salad and dressing aside.',
      'Whisk eggs and 1 tablespoon mustard in a medium bowl. Combine panko, 1/2 teaspoon salt, and 1/4 teaspoon pepper on a large plate. Season pork lightly with salt and pepper. Dip in egg mixture, then in panko, pressing to adhere.',
      'Working in 2 batches, heat 2 tablespoons vegetable oil in a large nonstick skillet over medium heat and cook pork until golden brown and cooked through, about 2 minutes per side, adding 1 tablespoon vegetable oil after turning. Drain on paper towels.',
      'Toss salad with dressing; season to taste with salt and pepper. Serve pork with salad and lemon wedges for squeezing over.'
    ],
  ),
  Meal(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'Garlic Rosemary Pork Chops',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/del.h-cdn.co/assets/18/11/1520972863-pork-chop-vertical.jpg?crop=1xw:1xh;center,top&resize=980:*',
    duration: 30,
    ingredients: [
      '4 pork loin chops',
      'Kosher salt',
      'Freshly ground black pepper',
      '1 tbsp. freshly minced rosemary',
      '2 cloves garlic, minced',
      '(1 stick) butter, melted',
      '1 tbsp. extra-virgin olive oil'
    ],
    steps: [
      'Preheat oven to 375°. Season pork chops generously with salt and pepper.',
      'In a small bowl mix together butter, rosemary, and garlic. Set aside.',
      'In an oven safe skillet over medium-high heat, heat olive oil then add pork chops.',
      'Sear until golden, 4 minutes, flip and cook 4 minutes more. Brush pork chops generously with garlic butter.',
      'Place skillet in oven and cook until cooked through (145° for medium), 10-12 minutes. Serve with more garlic butter.'
    ],
  ),
  Meal(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'Calzone',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.aniagotuje.com/pictures/articles/2020/01/1968027-v-1500x1500.jpg',
    duration: 35,
    ingredients: [
      '1 pound pizza dough',
      '½ cup pizza sauce',
      '½ cup yellow onion diced',
      '½ cup green bell pepper diced',
      '½ cup sliced pepperoni',
      '1 cup mozzarella cheese shredded',
      '1 tablespoon olive oil'
    ],
    steps: [
      'Preheat oven to 425°F and line a large sheet pan with parchment paper.',
      'Divide pizza dough into 4 equal parts and roll each dough ball into a 1/4 inch thick circle.',
      'On half of each dough circle, add equal parts sauce, yellow onion, green bell pepper, and sliced pepperoni. Make sure to leave a little room around the edges so you can crimp the calzone shut.',
      'Sprinkle the toppings with equal parts shredded cheese. Then fold the other half of the dough over the toppings and crimp the edges.',
      'Cut 2-3 air vents into the top of the calzone and place it on to the prepared baking sheet.',
      'Brush with olive oil and bake for about 15 minutes or until the dough is fully cooked and the calzone is golden brown.',
      'Serve with warmed pizza sauce for dipping.'
    ],
  ),
  Meal(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'Neapolitan pizza',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.acouplecooks.com/wp-content/uploads/2018/09/Neapolitan-Pizza-0019.jpg',
    duration: 45,
    ingredients: [
      '1 ball Best Homemade Pizza Dough',
      '⅓ cup Easy Pizza Sauce',
      '3 ounces fresh mozzarella cheese (or about ¾ cup shredded mozzarella)',
      'Kosher salt',
      '2 basil leaves',
      'Semolina flour or cornmeal, for dusting the pizza peel'
    ],
    steps: [
      'Place a pizza stone in the oven and preheat to 500°F. OR preheat your pizza oven (here’s the pizza oven we have!).',
      'Make Pizza Sauce.',
      'Slice the mozzarella into ¼ inch thick pieces. If it’s incredibly watery fresh mozzarella (all brands vary), you may want to let it sit on a paper towel to remove moisture for about 15 minutes then dab the mozzarella with the paper towel to remove any additional moisture.',
      'When the oven is ready, stretch the dough into a circle; see How to Stretch Pizza Dough for instructions. Sprinkle a pizza peel with semolina flour or cornmeal, then carefully place the dough on top. Spread the pizza sauce across the dough. Top with mozzarella cheese.  Taste a bite of the mozzarella cheese; if it does not taste salty, add a few pinches of kosher salt to the pizza.',
      'If you’re baking in a pizza oven, add the basil leaves. For baking in a standard oven, add the basil leaves after you bake (the leaves turn black in a standard oven)',
      'Transfer the pizza to the pizza stone on the pizza peel, then bake until the cheese is melted, about 7 minutes in the oven (or 1 minute in the pizza oven). Slice into pieces and serve immediately'
    ],
  ),
  Meal(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'Pasta alla Norma',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cookieandkate.com/images/2020/09/pasta-alla-norma-recipe-3-768x1152.jpg',
    duration: 50,
    ingredients: [
      '1 batch Super Simple Marinara Sauce, or 2 cups store-bought marinara',
      '2 medium eggplants ',
      '¼ cup + 1 teaspoon extra-virgin olive oil',
      '¼ teaspoon fine salt, more to taste',
      '8 ounces rigatoni, ziti or spaghetti',
      '½ cup chopped fresh basil, plus a handful more small basil leaves or torn leaves for garnish ',
      '½ to 1 teaspoon red pepper flakes, to taste (optional)',
      '½ teaspoon dried oregano',
      '¾ cup finely grated ricotta salata and/or Parmesan cheese'
    ],
    steps: [
      'If making your own marinara: Cook the sauce per instructions. If it’s done cooking before you’re ready to assemble, cover the pot and keep it warm over very low heat. If you’re using store-bought marinara, warm it in a pot over medium-low heat while you cook the pasta.',
      'Meanwhile, preheat the oven to 425 degrees Fahrenheit with racks in the upper and lower thirds of the oven. Line two large, rimmed baking sheets with parchment paper for easy cleanup.  ',
      'Use a vegetable peeler to shave off long alternating strips of eggplant peel. The eggplants will look striped like zebras when you’re done. Then slice the eggplants into ½-inch thick rounds, discarding the end pieces.',
      'Place the eggplant on the lined baking sheets. Brush the rounds with olive oil on both sides. Sprinkle the eggplant with the salt and plenty of pepper. Roast until deeply golden and tender, about 35 to 45 minutes, flipping after 20 minutes. Set aside',
      'Bring a large pot of salted water to boil and cook the pasta until al dente, according to package directions. Reserve some pasta cooking water before draining (about ½ cup should be plenty), then return the pasta to the pot.',
      'When the eggplant is done and the marinara is finished cooking (or warmed through, if using store-bought), gently stir the roasted eggplant into the sauce. Add the remaining 1 teaspoon olive oil, fresh basil, red pepper flakes (skip if you don’t like spice, or load it up if you do). Crush the dried oregano between your fingers as you drop it in.',
      'Add the pasta to the sauce with a couple tablespoons of the reserved pasta cooking water, and gently stir it in. Add about two-thirds of the cheese, reserving the rest for garnish. Season to taste with additional salt (I usually add ¼ teaspoon more) and black pepper. You can add a bit more of the reserved pasta cooking water to loosen up the sauce, if desired.',
      'Divide the pasta between four bowls. Sprinkle the remaining cheese on top of the individual servings, followed by some extra fresh basil. For added richness, drizzle the servings lightly with olive oil. Enjoy! Leftover pasta will keep well in the refrigerator, covered, for 4 to 5 days.',
    ],
  ),
  Meal(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'Pad Thai',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/del.h-cdn.co/assets/17/25/640x959/gallery-1498148188-delish-easy-pad-thai-vertical-1024.jpg?resize=768:*',
    duration: 25,
    ingredients: [
      'Kosher salt',
      '8 wide rice noodles',
      '2 tbsp. lime juice',
      '2 tbsp. brown sugar',
      '1 tbsp. fish sauce',
      '1 tbsp. low-sodium soy sauce',
      '¼ tsp. cayenne pepper',
      '2 tbsp. vegetable oil',
      '1 bell pepper, thinly sliced',
      '2 cloves garlic, minced',
      '2 eggs, lightly whisked',
      '1 shrimp, peeled and deveined',
      'Freshly ground black pepper',
      '2 green onions, thinly sliced',
      '¼ roasted peanuts, chopped',
    ],
    steps: [
      'In a large pot of salted boiling water, cook noodles until al dente. Drain.',
      'In a small bowl, whisk together lime juice, brown sugar, fish sauce, soy sauce, and cayenne pepper. Set aside.',
      'In a large nonstick pan over medium-high heat, heat oil. Add bell pepper and cook until tender, about 4 minutes. Stir in garlic and cook until fragrant, about 1 minute more. Add the shrimp and season with salt and pepper. Cook until pink, about 2 minutes per side.',
      'Push the shrimp and vegetables to one side of the pan and pour in the egg. Scramble until just set then mix with the shrimp mixture. Add the cooked noodles and toss until combined. Pour in the lime juice mixture and toss until the noodles are coated.',
      'Garnish with green onions and roasted peanuts before serving.',
    ],
  ),
  Meal(
    id: 'm17',
    categories: [
      'c6',
    ],
    title: 'Lemon Garlic Shrimp',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/del.h-cdn.co/assets/17/38/1600x2399/gallery-1506010449-lemon-garlic-shrimp-delish-1.jpg?resize=980:*',
    duration: 20,
    ingredients: [
      '2 tbsp. butter, divided',
      '1 tbsp. extra-virgin olive oil',
      '1 lb. medium shrimp, peeled and deveined',
      '1 lemon, thinly sliced, plus juice of 1 lemon',
      '3 cloves garlic, minced',
      '1 tsp. crushed red pepper flakes',
      'Kosher salt',
      '2 tbsp. dry white wine (or water)',
      'Freshly chopped parsley, for garnish'
    ],
    steps: [
      'In a large skillet over medium heat, melt 1 tablespoon butter and olive oil',
      'Add shrimp, lemon slices, garlic, and crushed red pepper flakes, and season with salt.',
      'Cook, stirring occasionally, until shrimp is pink and opaque, about 3 minutes per side.',
      'Remove from heat and stir in remaining butter, lemon juice, and white wine. ',
      'Season with salt and garnish with parsley before serving.',
    ],
  ),
  Meal(
    id: 'm18',
    categories: [
      'c6',
    ],
    title: 'Baked Scallops',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/baked-scallops-1-1650053711.jpeg?crop=0.8333333333333334xw:1xh;center,top&resize=768:*&keepGifs=1',
    duration: 45,
    ingredients: [
      '1 scallops',
      'Kosher salt',
      'Freshly ground black pepper',
      '4 tbsp. butter, melted',
      '3 cloves garlic, minced',
      'Juice of ½ a lemon',
      '¼ panko bread crumbs',
      '¼ freshly grated Parmesan',
      '4 tsp. extra-virgin olive oil',
      'Pinch red pepper flakes',
      'Lemon wedges, for serving'
    ],
    steps: [
      'Preheat oven to 425°. Pat scallops dry with paper towels and place in a small baking dish. Season with salt and pepper.',
      'In a small bowl, combine melted butter, garlic, and lemon juice. Pour all over scallops.',
      'In another small bowl, combine bread crumbs, Parmesan, oil, and red pepper flakes. Sprinkle mixture on top of each scallop.',
      'Bake until tops are golden and scallops are translucent, 12 to 15 minutes.',
      'Spoon butter over tops and serve with lemon wedges.'
    ],
  ),
  Meal(
    id: 'm19',
    categories: [
      'c7',
    ],
    title: 'French Onion Soup',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-french-onion-soup-vertical-1-1538433745.jpg?crop=1xw:1xh;center,top&resize=980:*',
    duration: 65,
    ingredients: [
      '4 tbsp. butter',
      '3 large yellow onions, thinly sliced into half moons',
      '2 tbsp. all-purpose flour',
      'Kosher salt',
      'Freshly ground black pepper',
      '½ white wine',
      '2 low-sodium chicken stock',
      '4 low-sodium beef stock',
      '8 sprigs fresh thyme, plus more for serving',
      '8 baguette slices',
      '1 grated Gruyère'
    ],
    steps: [
      'In a large pot over medium heat, melt butter. Add onions and cook, stirring occasionally, until deeply golden, about 25 minutes.',
      'Add flour and cook 1 minute. Season with salt and pepper. Add wine and let simmer until evaporated, 3 minutes. Add stocks and thyme and bring to a boil. Reduce heat and let simmer 15 minutes. Season with salt and pepper to taste and remove thyme. ',
      'Preheat broiler to high. Ladle soups into heat safe ramekins and top each with 2 slices of bread and top with cheese. Broil until bubbling and golden, 1 to 2 minutes.',
      'Top with thyme to serve. '
    ],
  ),
  Meal(
    id: 'm20',
    categories: [
      'c7',
    ],
    title: 'Beef Bourguignon',
    affordability: Affordability.pricey,
    complexity: Complexity.hard,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190828-beef-bourguignon-0154-portrait-pf-1568132096.jpg?crop=1xw:0.9994736842105263xh;center,top&resize=980:*',
    duration: 140,
    ingredients: [
      '3 beef chuck, cut into 1” cubes',
      'Freshly ground black pepper',
      '½ bacon, cut into ½” pieces',
      '2 large carrots, peeled, sliced on bias into large chunks',
      '1 large onion, chopped',
      '4 cloves garlic, minced',
      '2 tsp. tomato paste',
      '3 tbsp. all-purpose flour',
      '3 dry red wine',
      '2 low-sodium beef broth',
      '1 bay leaf',
      '3 sprigs thyme',
      '4 tbsp. butter',
      '½ pearl onions',
      '½ cremini mushrooms, halved',
      'Freshly chopped parsley, for garnish'
    ],
    steps: [
      'Preheat oven to 350°. Season beef with salt and pepper. In a large Dutch oven (or ovenproof pot) over medium heat, heat oil. Add bacon and cook, stirring occasionally, until crispy, about 6 minutes. Drain bacon on a paper towel-lined plate.',
      'Increase heat to medium-high and, working in batches, add beef in a single layer, leaving room between each piece. Cook until seared on all sides, about 10 minutes. Repeat with remaining beef. ',
      'Reduce heat to medium and stir in carrot and onion. If the pan seems very dark, add 1 tablespoon of water and use a wooden spoon to scrape dark. Season with salt and cook until softened, about 5 minutes. Stir in garlic and tomato paste and cook until fragrant, about 30 seconds.',
      'Add flour and stir until vegetables are coated, then add wine, broth, bay leaves, and thyme. Return bacon and beef to pot, cover pot with a tight-fitting lid, and transfer to oven. Cook until beef is very tender and sauce has thickened slightly, about 1½ hours. Season with salt and pepper.',
      'Meanwhile, cook pearl onions and mushrooms. In a large skillet over medium heat, melt butter. Add pearl onions and mushrooms and cook, stirring occasionally, until golden and tender. If the pan seems dry, add water by the tablespoon.',
      'Top each serving with pearl onions and mushrooms and garnish with parsley.'
    ],
  ),
  Meal(
    id: 'm21',
    categories: [
      'c7',
    ],
    title: 'Gougères (Cheese Puffs)',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-cheese-puffs-093021-02-jg-1634050088.jpg?crop=0.836xw:1.00xh;0.164xw,0&resize=980:*',
    duration: 60,
    ingredients: [
      'water',
      '4 tbsp. butter',
      '½ tsp. Kosher salt',
      '½ tsp. granulated sugar',
      '1 tsp. freshly ground white pepper (optional)',
      '½ all-purpose flour',
      '2 large eggs',
      '½ freshly grated Gruyère, plus more for topping'
    ],
    steps: [
      'Preheat oven to 400° and line a baking sheet with parchment paper.',
      'In a medium saucepan, combine water, butter, salt, sugar, and white pepper if using, and bring to a boil. Add the flour all at once and stir with a wooden spoon until a smooth dough forms. Continue to cook until dough pulls away from the pan and forms a ball, and a film develops on the bottom of the pot, about 2 minutes.',
      'Transfer dough to a bowl and continue to mix with a wooden spoon to cool slightly, 1 minute. Beat in eggs, one at a time, mixing until smooth and fully incorporated after each addition. Fold in gruyere.',
      'Transfer batter to a piping bag or use a small (2 teaspoon capacity) cookie scoop to create small, inch-wide mounds on prepared baking sheet, about an inch apart. Top with more gruyere and bake until puffed and golden, 20 to 25 minutes.'
    ],
  ),
  Meal(
    id: 'm22',
    categories: [
      'c8',
    ],
    title: 'Capers and Halibut',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://recipesdetails.com/thumb/capers-and-halibut.jpg',
    duration: 30,
    ingredients: [
      '1 tablespoon olive oil',
      '2 steaks halibut',
      '½ cup white wine',
      '1 teaspoon chopped garlic',
      '¼ cup butter',
      'salt and pepper to taste',
      '3 tablespoons capers, with liquid'
    ],
    steps: [
      'Heat the olive oil in a large skillet over medium-high heat. Fry the halibut steaks on all sides until nicely browned. Remove from pan, and set aside.',
      'Pour the wine into the pan, and use a spatula to scrape any browned bits from the bottom. Let the wine reduce to almost nothing, then stir in the garlic, butter and capers. Season with salt and pepper to taste. Let the sauce simmer for a minute to blend the flavors.',
      'Return the steaks to the pan, and coat them with sauce. Cook until fish flakes easily with a fork. Serve fish immediately with the sauce from the pan poured over it.'
    ],
  ),
  Meal(
    id: 'm23',
    categories: [
      'c8',
    ],
    title: "Hudson's Baked Tilapia with Dill Sauce",
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F07%2F19%2F74169-Hudsons-Baked-Tilapia-with-Dill-Sauce-LatinaCook_5202473_original-1x1-1.jpg',
    duration: 30,
    ingredients: [
      '4 fillets tilapia',
      'salt and pepper to taste',
      '1 tablespoon Cajun seasoning, or to taste',
      '1 lemon, thinly sliced',
      '¼ cup mayonnaise',
      '½ cup sour cream',
      '⅛ teaspoon garlic powder',
      '1 teaspoon fresh lemon juice',
      '2 tablespoons chopped fresh dill'
    ],
    steps: [
      'Preheat the oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking dish.',
      'Season the tilapia fillets with salt, pepper and Cajun seasoning on both sides. Arrange the seasoned fillets in a single layer in the baking dish. Place a layer of lemon slices over the fish fillets. I usually use about 2 slices on each piece so that it covers most of the surface of the fish.',
      'Bake uncovered for 15 to 20 minutes in the preheated oven, or until fish flakes easily with a fork.',
      'While the fish is baking, mix together the mayonnaise, sour cream, garlic powder, lemon juice and dill in a small bowl. Serve with tilapia.'
    ],
  ),
  Meal(
    id: 'm24',
    categories: [
      'c8',
    ],
    title: 'Blackened Tuna',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F630224.jpg&w=272&h=272&c=sc&poi=face&q=60',
    duration: 20,
    ingredients: [
      '1½ pounds fresh tuna steaks, 1 inch thick',
      '2 tablespoons Cajun seasoning',
      '2 tablespoons olive oil',
      '2 tablespoons butter'
    ],
    steps: [
      'Generously coat tuna with Cajun seasoning.',
      'Heat oil and butter in a large skillet over high heat.',
      'When oil is nearly smoking, place steaks in pan. Cook on one side for 3 to 4 minutes, or until blackened. Turn steaks, and cook for 3 to 4 minutes, or to desired doneness.'
    ],
  ),
  Meal(
    id: 'm25',
    categories: [
      'c9',
    ],
    title: 'Oreo Cheesecake Bars',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-slutty-cheesecake-bars-vertical-1548356501.jpg?crop=1xw:1xh;center,top&resize=980:*',
    duration: 200,
    ingredients: [
      '1 log refrigerated chocolate chip cookie dough (such as Pillsbury)',
      '20 Oreo cookies, plus more for topping',
      '2 blocks cream cheese, softened',
      '½. granulated sugar',
      '2 large eggs',
      '½ tsp. pure vanilla extract',
      'Pinch of kosher salt',
      'Warm caramel, for drizzling'
    ],
    steps: [
      'Preheat oven to 325°. Line an 8"-x-8" baking dish with parchment paper with a 2" overhang. Press cookie dough into bottom of baking dish.',
      'Top with a single layer of Oreos, breaking them up to fit, if necessary, and set aside.',
      'Make cheesecake layer: In a medium bowl using a handheld mixer or stand mixer with the paddle attachment, beat cream cheese until smooth. Beat in sugar, eggs, vanilla, and salt until fully combined. Pour over Oreo layer and smooth top.',
      'Top with broken Oreo pieces and bake until the center is only slightly jiggly, 30 to 35 minutes.',
      'Refrigerate until completely chilled, at least 3 hours and up to overnight.',
      'Remove cheesecake bar from baking dish and slice.',
      'Drizzle with warm caramel before serving.'
    ],
  ),
  Meal(
    id: 'm26',
    categories: [
      'c9',
    ],
    title: 'Chocolate Pudding',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20190628-delish-chocolate-pudding-ehg-290-vertical-1562792025.png?crop=0.9997369113391213xw:1xh;center,top&resize=980:*',
    duration: 180,
    ingredients: [
      '½ granulated sugar',
      '½ unsweetened cocoa powder',
      '2 tbsp. cornstarch',
      '½ tsp. kosher salt',
      '2 ½ l. milk',
      '3 large egg yolks',
      '3 chopped bittersweet chocolate',
      '2 tbsp. butter',
      '1 tsp. pure vanilla extract',
      'Whipped cream, for serving',
      'Chocolate shavings, for serving'
    ],
    steps: [
      'In a medium saucepan, combine sugar, cocoa powder, cornstarch, and salt. Slowly pour in milk, whisking to combine. Place saucepan over medium heat and whisk until mixture comes to a boil, 6 minutes. ',
      'Place egg yolks in a medium heat proof bowl and beat until light and frothy. Slowly pour in about 1/2 cup hot cocoa mixture, whisking to combine. Slowly pour egg mixture back into sauce pan, whisking constantly. ',
      'Return to medium heat, whisking, until thickened to a pudding-like consistency, about 3 minutes.',
      'Take off heat and whisk in chocolate, butter, and vanilla until smooth. If mixture looks lumpy at all, strain it through a fine mesh strainer.',
      'Pour into a large bowl and place plastic wrap directly on surface of pudding. Refrigerate until chilled, 2 hours. ',
      'When ready to serve, spoon into individual bowls or ramekins and top with whipped cream and chocolate shavings.'
    ],
  ),
  Meal(
    id: 'm27',
    categories: [
      'c9',
    ],
    title: 'Cookie Dough Ice Cream Sandwiches',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-cookie-dough-ice-cream-sandwiches-1523559186.png?crop=1xw:1xh;center,top&resize=980:*',
    duration: 300,
    ingredients: [
      '1 c. melted butter',
      '1 c. packed brown sugar',
      '½ c. sugar',
      '½ c. milk (preferably whole or 2%)',
      '1 tsp. pure vanilla extract',
      '1 ½ mini chocolate chips',
      '3 vanilla ice cream, softened',
      '1 tsp. kosher salt',
      '2 ½ all-purpose flour'
    ],
    steps: [
      'Line a large baking sheet with parchment paper, leaving overhang on sides. In a large bowl, stir together melted butter, both sugars, milk, and vanilla until combined. Stir in flour and salt, then fold in chocolate chips. ',
      'Press cookie dough into prepared baking sheet, evening it out as much as possible (a cutting board can help). Top with a second piece of parchment and freeze until firm, 1 hour. ',
      'Remove cookie dough from pan and place on a cutting board. Slice dough down the center. Scoop ice cream on one half, then gently place other half of cookie dough on top. Transfer back to pan and freeze at least 4 hours and up to overnight.',
      'Slice into sandwiches and serve.'
    ],
  ),
  Meal(
    id: 'm28',
    categories: [
      'c10',
    ],
    title: 'Pineapple Sunrise Mimosas',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4579246.jpg&w=272&h=272&c=sc&poi=face&q=60',
    duration: 10,
    ingredients: [
      '4½ cups pineapple juice',
      '1⅛ cups orange juice',
      '⅓ cup lime juice',
      '¼ fresh pineapple, sliced',
      '½ blood orange, sliced',
      '½ lime, sliced',
      '1 (750 milliliter) bottle Prosecco (Italian sparkling wine)',
      '¼ cup Campari',
      '4 slices pineapple and orange slices, for garnish'
    ],
    steps: [
      'Stir pineapple juice, orange juice, and lime juice together in a large pitcher or punch bowl. Add pineapple, blood orange, and lime slices. Cover; refrigerate 2 to 24 hours.',
      'To serve, pour 1/2 cup juice mixture into each glass or champagne flute. Add 1/4 cup Prosecco per serving.',
      'Slowly drizzle in 1 teaspoon Campari. Garnish with a fresh pineapple or orange slice, if desired.'
    ],
  ),
  Meal(
    id: 'm29',
    categories: [
      'c10',
    ],
    title: 'The Real Mojito',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F679757.jpg&w=272&h=272&c=sc&poi=face&q=60',
    duration: 10,
    ingredients: [
      '10 fresh mint leaves',
      '½ medium lime, cut into 3 wedges, divided',
      '2 tablespoons white sugar, or to taste',
      '1 cup ice cubes, or as needed',
      '1½ fluid ounces white rum',
      '½ cup club soda, or as needed'
    ],
    steps: [
      'Place mint leaves and 1 lime wedge into a sturdy glass. Use a muddler and crush to release mint oils and lime juice.',
      'Add remaining lime wedges and 2 tablespoons sugar, and muddle again to release the lime juice. Do not strain the mixture.',
      'Fill the glass almost to the top with ice. Pour in rum and fill the glass with club soda.',
      'Stir, taste, and add more sugar if desired.'
    ],
  ),
  Meal(
    id: 'm30',
    categories: [
      'c10',
    ],
    title: 'Mai Tai',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F05%2F24%2F2221437-mai-tai-Snacking-in-the-Kitchen-1x1-1.jpg&w=272&h=272&c=sc&poi=%5B522%2C558%5D&q=60',
    duration: 10,
    ingredients: [
      '1 cup ice cubes',
      '3 fluid ounces pineapple juice',
      '2 fluid ounces orange juice',
      '1 jigger spiced rum',
      '½ jigger coconut-flavored rum',
      '1 teaspoon grenadine syrup'
    ],
    steps: [
      '1 teaspoon grenadine syrup',
      'Add pineapple juice, orange juice, spiced rum, coconut rum, and grenadine. ',
      'Shake vigorously and strain into a glass full of ice.'
    ],
  ),
];
