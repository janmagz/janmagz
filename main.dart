import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Recipe App with Meal Plan',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: RecipeHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RecipeHomePage extends StatefulWidget {
  @override
  _RecipeHomePageState createState() => _RecipeHomePageState();
}

class _RecipeHomePageState extends State<RecipeHomePage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> recipes = [
  {
    "title": "Tapsilog",
    "category": "Breakfast",
    "image": "assets/image/tapsilog.jpg",
    "ingredients": [
      "Beef tapa",
      "Garlic rice",
      "Fried egg",
      "Soy sauce",
      "Vinegar",
      "Sugar",
      "Garlic",
      "Pepper"
    ],
    "instructions": [
      "Marinate beef in soy sauce, vinegar, sugar, garlic, and pepper.",
      "Pan-fry until caramelized.",
      "Serve with garlic rice and fried egg."
    ],
    "nutrition": [
      "Calories: 450 kcal",
      "Protein: 32g",
      "Carbs: 50g",
      "Fat: 18g"
    ]
  },
  {
    "title": "Tocilog",
    "category": "Breakfast",
    "image": "assets/image/tocilog.jpg",
    "ingredients": [
      "Pork tocino",
      "Garlic rice",
      "Fried egg",
      "Sugar",
      "Salt",
      "Pineapple juice",
      "Annatto powder"
    ],
    "instructions": [
      "Marinate pork in sugar, salt, pineapple juice, and annatto powder.",
      "Pan-fry until caramelized.",
      "Serve with garlic rice and fried egg."
    ],
    "nutrition": [
      "Calories: 480 kcal",
      "Protein: 30g",
      "Carbs: 55g",
      "Fat: 20g"
    ]
  },
  {
    "title": "Longsilog",
    "category": "Breakfast",
    "image": "assets/image/longsilog.jpg",
    "ingredients": [
      "Longganisa",
      "Garlic rice",
      "Fried egg",
      "Vinegar",
      "Sugar",
      "Garlic"
    ],
    "instructions": [
      "Cook longganisa in water until it evaporates, then fry in its own oil.",
      "Serve with garlic rice, fried egg, and vinegar dip."
    ],
    "nutrition": [
      "Calories: 500 kcal",
      "Protein: 28g",
      "Carbs: 52g",
      "Fat: 22g"
    ]
  },
  {
    "title": "Champorado",
    "category": "Breakfast",
    "image": "assets/image/champorado.jpg",
    "ingredients": [
      "Glutinous rice",
      "Cocoa powder",
      "Sugar",
      "Evaporated milk",
      "Water"
    ],
    "instructions": [
      "Boil glutinous rice in water.",
      "Add cocoa powder and sugar, stir until thick.",
      "Serve with evaporated milk."
    ],
    "nutrition": [
      "Calories: 300 kcal",
      "Protein: 6g",
      "Carbs: 65g",
      "Fat: 5g"
    ]
  },
  {
    "title": "Arroz Caldo",
    "category": "Breakfast",
    "image": "assets/image/arroz.jpg",
    "ingredients": [
      "Glutinous rice",
      "Chicken",
      "Ginger",
      "Garlic",
      "Onion",
      "Fish sauce",
      "Water",
      "Saffron",
      "Boiled egg",
      "Calamansi"
    ],
    "instructions": [
      "Sauté garlic, onion, and ginger.",
      "Add chicken, fish sauce, and rice, pour in water, and simmer until thick.",
      "Top with boiled egg and calamansi."
    ],
    "nutrition": [
      "Calories: 350 kcal",
      "Protein: 28g",
      "Carbs: 40g",
      "Fat: 10g"
      ]
    },
    {
          'title': 'Sinigang na Baboy',
          'category': 'Lunch',
          'image': 'assets/image/sinigangb.jpg',
          'ingredients': [
              'Pork belly',
              'Water',
              'Tomatoes',
              'Onion',
              'Radish',
              'String beans',
              'Eggplant',
              'Kangkong',
              'Tamarind mix',
              'Salt',
              'Fish sauce'
          ],
          'instructions': [
              'Boil pork with tomatoes and onion.',
              'Add vegetables.',
              'Pour in tamarind mix.',
              'Season with fish sauce.',
              'Simmer until cooked.'
          ],
          'nutrition': [
              'Calories: 280 kcal', 
              'Protein: 22g', 
              'Carbs: 12g', 
              'Fat: 18g'
          ]
      },
    {
        'title': 'Adobo',
        'category': 'Lunch',
        'image': 'assets/image/adobos.jpg',
        'ingredients': [
            'Chicken or pork',
            'Soy sauce',
            'Vinegar',
            'Water',
            'Garlic',
            'Black peppercorns',
            'Bay leaves',
            'Cooking oil',
            'Sugar (optional)'
        ],
        'instructions': [
            'Sauté garlic.',
            'Brown the meat.',
            'Add soy sauce, vinegar, and water.',
            'Simmer with bay leaves and peppercorns until tender.'
        ],
        'nutrition': [
            'Calories: 320 kcal', 
            'Protein: 28g', 
            'Carbs: 8g', 
            'Fat: 18g'
        ]
    },
    {
        'title': 'Bicol Express',
        'category': 'Lunch',
        'image': 'assets/image/bicol.jpg',
        'ingredients': [
            'Pork belly',
            'Coconut milk',
            'Coconut cream',
            'Garlic',
            'Onion',
            'Red chilies',
            'Shrimp paste',
            'Salt',
            'Pepper'
        ],
        'instructions': [
            'Sauté garlic, onion, and shrimp paste.',
            'Add pork.',
            'Pour in coconut milk and simmer.',
            'Add chilies and coconut cream.'
        ],
        'nutrition': [
            'Calories: 350 kcal', 
            'Protein: 28g', 
            'Carbs: 8g', 
            'Fat: 25g'
        ]
    },
    {
        'title': 'Pinakbet',
        'category': 'Lunch',
        'image': 'assets/image/pinakbet.jpg',
        'ingredients': [
            'Squash',
            'Eggplant',
            'String beans',
            'Bitter melon',
            'Shrimp or pork',
            'Shrimp paste',
            'Garlic',
            'Tomato',
            'Onion',
            'Water'
        ],
        'instructions': [
            'Sauté garlic, onion, and tomato.',
            'Add shrimp or pork.',
            'Pour in water and mix in shrimp paste.',
            'Simmer with vegetables.'
        ],
        'nutrition': [
            'Calories: 150 kcal', 
            'Protein: 10g', 
            'Carbs: 20g', 
            'Fat: 4g'
        ]
    },
    {
        'title': 'Beef Caldereta',
        'category': 'Lunch',
        'image': 'assets/image/beefcal.jpg',
        'ingredients': [
            'Beef',
            'Tomato sauce',
            'Liver spread',
            'Bell pepper',
            'Carrot',
            'Potato',
            'Garlic',
            'Onion',
            'Water'
        ],
        'instructions': [
            'Sauté garlic and onion.',
            'Brown beef.',
            'Pour in tomato sauce and water.',
            'Simmer.',
            'Add liver spread and vegetables.'
        ],
        'nutrition': [
            'Calories: 380 kcal', 
            'Protein: 32g', 
            'Carbs: 18g', 
            'Fat: 22g'
        ]
    },
    {
        'title': 'Tinolang Manok',
        'category': 'Dinner',
        'image': 'assets/image/tinolam.jpg',
        'ingredients': [
            'Chicken',
            'Ginger',
            'Papaya',
            'Chili leaves',
            'Water',
            'Fish sauce',
            'Onion',
            'Garlic'
        ],
        'instructions': [
            'Sauté garlic, onion, and ginger.',
            'Add chicken.',
            'Pour in water and simmer.',
            'Add papaya and chili leaves.'
        ],
        'nutrition': [
            'Calories: 250 kcal', 
            'Protein: 26g', 
            'Carbs: 6g', 
            'Fat: 12g'
        ]
    },
    {
        'title': 'Paksiw na Bangus',
        'category': 'Dinner',
        'image': 'assets/image/paksiw.jpg',
        'ingredients': [
            'Milkfish',
            'Vinegar',
            'Garlic',
            'Ginger',
            'Salt',
            'Pepper',
            'Eggplant',
            'Water'
        ],
        'instructions': [
            'Simmer milkfish with vinegar, water, garlic, ginger, salt, and pepper.',
            'Add eggplant and cook until tender.'
        ],
        'nutrition': [
            'Calories: 180 kcal', 
            'Protein: 22g', 
            'Carbs: 4g', 
            'Fat: 8g'
        ]
    },
    {
        'title': 'Ginisang Monggo',
        'category': 'Dinner',
        'image': 'assets/image/monggo.jpg',
        'ingredients': [
            'Mung beans',
            'Pork',
            'Shrimp',
            'Bitter melon leaves',
            'Water',
            'Garlic',
            'Onion',
            'Tomato'
        ],
        'instructions': [
            'Boil mung beans.',
            'Sauté garlic, onion, and tomato with pork and shrimp.',
            'Mix with beans.',
            'Add bitter melon leaves.'
        ],
        'nutrition': [
            'Calories: 260 kcal', 
            'Protein: 22g', 
            'Carbs: 32g', 
            'Fat: 8g'
        ]
    },
    {
        'title': 'Escabeche',
        'category': 'Dinner',
        'image': 'assets/image/escabeche.jpg',
        'ingredients': [
            'Fish',
            'Vinegar',
            'Bell pepper',
            'Carrots',
            'Garlic',
            'Onion',
            'Sugar',
            'Soy sauce'
        ],
        'instructions': [
            'Fry fish.',
            'Sauté garlic and onion.',
            'Add bell pepper and carrots.',
            'Pour in vinegar, soy sauce, and sugar.',
            'Simmer.'
        ],
        'nutrition': [
            'Calories: 280 kcal', 
            'Protein: 30g', 
            'Carbs: 14g', 
            'Fat: 10g'
        ]
    },
    {
        'title': 'Dinuguan',
        'category': 'Dinner',
        'image': 'assets/image/dinuguan.jpg',
        'ingredients': [
            'Pork',
            'Pig blood',
            'Vinegar',
            'Garlic',
            'Onion',
            'Chili',
            'Water'
        ],
        'instructions': [
            'Sauté garlic and onion.',
            'Add pork.',
            'Pour in vinegar and cook.',
            'Mix in pig blood and chili.',
            'Simmer until thick.'
        ],
        'nutrition': [
            'Calories: 320 kcal', 
            'Protein: 28g', 
            'Carbs: 6g', 
            'Fat: 22g'
        ]
    },

  ];

  List<Map<String, dynamic>> filteredRecipes = [];

  @override
  void initState() {
    super.initState();
    filteredRecipes = recipes;
    _searchController.addListener(filterRecipes);
  }

  void filterRecipes() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredRecipes = recipes
          .where((recipe) => recipe['title'].toLowerCase().contains(query))
          .toList();
    });
  }
  void _addNewRecipe() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddRecipePage(
          onAddRecipe: (newRecipe) {
            setState(() {
              recipes.add(newRecipe);
              filteredRecipes = recipes;
            });
          },
        ),
      ),
    );
  }
  void deleteRecipe(Map<String, dynamic> recipeToDelete) {
    setState(() {
      recipes.remove(recipeToDelete);
      filteredRecipes = recipes; // Update filtered list to reflect changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Recipe App'),
        backgroundColor: const Color.fromARGB(255, 193, 180, 140),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MealPlanPage(recipes: recipes)),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 193, 180, 140),
              ),
              child: Text(
                'Recipe Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            
            ListTile(
              title: Text('Breakfast'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeCategoryPage(
                      recipes: recipes,
                      category: 'Breakfast',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Lunch'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeCategoryPage(
                      recipes: recipes,
                      category: 'Lunch',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Dinner'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeCategoryPage(
                      recipes: recipes,
                      category: 'Dinner',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      
      body: Container(
        color: Color.fromARGB(255, 189, 144, 128),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search recipes...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(8.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: filteredRecipes.length,
                itemBuilder: (context, index) {
                  final recipe = filteredRecipes[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RecipeDetailPage(recipe: recipe, onDeleteRecipe: deleteRecipe)),
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 189, 144, 128),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.asset(
                              recipe['image'],
                              height: 380,
                              cacheWidth: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              recipe['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewRecipe,
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 145, 99, 81),
      ),
    );
  }
}
class RecipeDetailPage extends StatelessWidget {
  final Map<String, dynamic> recipe;
  final Function(Map<String, dynamic>) onDeleteRecipe;
  RecipeDetailPage({required this.recipe, required this.onDeleteRecipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 193, 180, 140),
        title: Text(recipe['title']),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingListPage(
                    ingredients: List<String>.from(recipe['ingredients']),
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
          onPressed: () async {
            await showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SafeArea(
              child: Wrap(
                children: <Widget>[

                ListTile(
                  leading: Icon(Icons.copy),
                  title: Text('Copy to Clipboard'),
                  onTap: () {
                    Navigator.pop(context);
                    final String ingredients = recipe['ingredients'].join(', ');
                    final String instructions = recipe['instructions'].join('\n');
                    final String nutrition = recipe['nutrition'].join(', ');
                    
                    Clipboard.setData(ClipboardData(
                      text: 'Check out this recipe: ${recipe['title']}\n\nIngredients:\n$ingredients\n\nInstructions:\n$instructions\n\nNutrition:\n$nutrition',
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Recipe copied to clipboard')),
                    );
                  },
                ),
                ],
              ),
              );
            },
            );
          },
          ),
        ],
      ),
      
      backgroundColor: Color.fromARGB(255, 189, 144, 128),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(recipe['image']),
            ),
            SizedBox(height: 10),
            Text('Ingredients:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ...recipe['ingredients']
                .map<Widget>((ingredient) => Text('- $ingredient'))
                .toList(),
            SizedBox(height: 10),
            Text('Instructions:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ...recipe['instructions']
                .map<Widget>((instruction) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text('- $instruction'),
                    ))
                .toList(),
            SizedBox(height: 10),
            Text('Nutrition: ${recipe['nutrition']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  onDeleteRecipe(recipe);
                  Navigator.pop(context); // Return to the previous screen after deletion
                },
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 115, 84, 73)),
                child: Text('Delete Recipe',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddRecipePage extends StatelessWidget {
  final Function(Map<String, dynamic>) onAddRecipe;

  AddRecipePage({required this.onAddRecipe});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _ingredientsController = TextEditingController();
  final TextEditingController _instructionsController = TextEditingController();
  final TextEditingController _nutritionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Recipe'),
        backgroundColor: const Color.fromARGB(255, 189, 144, 128),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: _categoryController,
                decoration: InputDecoration(labelText: 'Category'),
              ),
              TextField(
                controller: _imageController,
                decoration: InputDecoration(labelText: 'Image Path'),
              ),
              TextField(
                controller: _ingredientsController,
                decoration: InputDecoration(labelText: 'Ingredients (comma separated)'),
              ),
              TextField(
                controller: _instructionsController,
                decoration: InputDecoration(labelText: 'Instructions (comma separated)'),
              ),
              TextField(
                controller: _nutritionController,
                decoration: InputDecoration(labelText: 'Nutrition (comma separated)'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final newRecipe = {
                    'title': _titleController.text,
                    'category': _categoryController.text,
                    'image': _imageController.text,
                    'ingredients': _ingredientsController.text.split(',').map((e) => e.trim()).toList(),
                    'instructions': _instructionsController.text.split(',').map((e) => e.trim()).toList(),
                    'nutrition': _nutritionController.text.split(',').map((e) => e.trim()).toList(),
                  };
                  onAddRecipe(newRecipe);
                  Navigator.pop(context);
                },
                child: Text('Add Recipe'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 145, 99, 81),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealPlanPage extends StatefulWidget {
  final List<Map<String, dynamic>> recipes;

  MealPlanPage({required this.recipes});

  @override
  _MealPlanPageState createState() => _MealPlanPageState();
}


class _MealPlanPageState extends State<MealPlanPage> {
  Map<String, Map<String, dynamic>> mealPlan = {
    'Monday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
    'Tuesday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
    'Wednesday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
    'Thursday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
    'Friday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
    'Saturday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
    'Sunday': {'Breakfast': null, 'Lunch': null, 'Dinner': null},
  };

  void _selectRecipe(String day, String mealType) {
    List<Map<String, dynamic>> filteredRecipes = widget.recipes
        .where((recipe) => recipe['category'].toLowerCase() == mealType.toLowerCase())
        .toList();

    if (filteredRecipes.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('No Recipes Available'),
          content: Text('No $mealType recipes available for selection.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 189, 144, 128),
        title: Text('Select Recipe for $mealType on $day'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: filteredRecipes.map((recipe) {
            return ListTile(
              title: Text(recipe['title']),
              onTap: () {
                addMealToDay(day, mealType, recipe);
                Navigator.pop(context);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
  void _addNewRecipe(Map<String, dynamic> newRecipe) {
    setState(() {
      widget.recipes.add(newRecipe);
    });
  }
  void addMealToDay(String day, String mealType, Map<String, dynamic> recipe) {
    setState(() {
      mealPlan[day]![mealType] = recipe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan'),
        backgroundColor: const Color.fromARGB(255, 193, 180, 140),
      ),
      body: Container(
        color: Color.fromARGB(255, 189, 144, 128),
        child: ListView(
        children: [
          for (var day in mealPlan.keys)
            ExpansionTile(
              title: Text(day),
              children: [
                for (var mealType in ['Breakfast', 'Lunch', 'Dinner'])
                  ListTile(
                    title: Text(mealType),
                    subtitle: mealPlan[day]![mealType] != null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(mealPlan[day]![mealType]!['title']),
                              SizedBox(height: 5),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ShoppingListPage(
                                        ingredients: List<String>.from(mealPlan[day]![mealType]!['ingredients']),
                                      ),
                                    ),
                                  );
                                },
                                child: Text('View Shopping List'),
                              )
                            ],
                          )
                        : Text('No meal planned'),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _selectRecipe(day, mealType);
                      },
                    ),
                  ),
              ],
            ),
        ],
      ),
      ),
    );
  }
}

class RecipeCategoryPage extends StatefulWidget {
  final List<Map<String, dynamic>> recipes;
  final String category;

  RecipeCategoryPage({required this.recipes, required this.category});

  @override
  _RecipeCategoryPageState createState() => _RecipeCategoryPageState();
}

class _RecipeCategoryPageState extends State<RecipeCategoryPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> filteredRecipes = [];

  @override
  void initState() {
    super.initState();
    filteredRecipes = widget.recipes
        .where((recipe) => recipe['category'].toLowerCase() == widget.category.toLowerCase())
        .toList();
    _searchController.addListener(_filterRecipes);
  }

  void _filterRecipes() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredRecipes = widget.recipes
          .where((recipe) =>
              recipe['category'].toLowerCase() == widget.category.toLowerCase() &&
              recipe['title'].toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category} Recipes'),
        backgroundColor: const Color.fromARGB(255, 193, 180, 140),
      ),
      body: Container(
        color: Color.fromARGB(255, 189, 144, 128),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search ${widget.category} recipes...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: filteredRecipes.length,
              itemBuilder: (context, index) {
                final recipe = filteredRecipes[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailPage(
                          recipe: recipe,
                          onDeleteRecipe: (recipe) {
                            setState(() {
                              filteredRecipes.remove(recipe);
                            });
                          },
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color: Color.fromARGB(255, 189, 144, 128),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                          child: Image.asset(
                            recipe['image'],
                            height: 380,
                            cacheWidth: 300,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            recipe['title'],
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      ),
    );
  }
}

class ShoppingListPage extends StatefulWidget {
  final List<String> ingredients;

  ShoppingListPage({required this.ingredients});

  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  final TextEditingController _shoppingController = TextEditingController();
  List<String> shoppingList = [];
  List<bool> itemChecked = []; // To track the checked status

  @override
  void initState() {
    super.initState();
    // Initialize the shopping list with ingredients passed from the RecipeDetailPage
    shoppingList.addAll(widget.ingredients);
    itemChecked.addAll(List.filled(widget.ingredients.length, false));
  }

  void _addToShoppingList() {
    if (_shoppingController.text.isNotEmpty) {
      setState(() {
        shoppingList.add(_shoppingController.text);
        itemChecked.add(false); // Add a corresponding checkbox for the item
      });
      _shoppingController.clear(); // Clear the input field after adding
    }
  }

  void _clearShoppingList() {
    setState(() {
      shoppingList.clear();
      itemChecked.clear(); // Clear the checkbox status as well
    });
  }

  // Delete item function
  void _deleteItem(int index) {
    setState(() {
      shoppingList.removeAt(index);
      itemChecked.removeAt(index); // Remove the corresponding checkbox status
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: const Color.fromARGB(255, 193, 180, 140),
        actions: [
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: _clearShoppingList,
            tooltip: 'Clear Shopping List',
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 189, 144, 128),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Input field to add custom items
            TextField(
              controller: _shoppingController,
              decoration: InputDecoration(
                labelText: 'Add Custom Item',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addToShoppingList,
              child: Text('Add Item',
              style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 129, 98, 86),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: shoppingList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: CheckboxListTile(
                      title: Text(shoppingList[index]),
                      value: itemChecked[index],
                      onChanged: (bool? value) {
                        setState(() {
                          itemChecked[index] = value!;
                        });
                      },
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete,
                          color: Color.fromARGB(255, 129, 98, 86)),
                      onPressed: () {
                        _deleteItem(index); // Call the delete function
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MealPlanCategoryPage extends StatefulWidget {
  final List<Map<String, dynamic>> recipes;
  final String category;

  MealPlanCategoryPage({required this.category, required this.recipes});

  @override
  _MealPlanCategoryPageState createState() => _MealPlanCategoryPageState();
}

class _MealPlanCategoryPageState extends State<MealPlanCategoryPage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryRecipes = widget.recipes
        .where((recipe) => recipe['category'].toLowerCase() == widget.category.toLowerCase())
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category} Meal Plan'),
      ),
      body: ListView.builder(
        itemCount: categoryRecipes.length,
        itemBuilder: (context, index) {
          final recipe = categoryRecipes[index];
          return ListTile(
            title: Text(recipe['title']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(
                    recipe: recipe,
                    onDeleteRecipe: (recipe) {
                      setState(() {
                        widget.recipes.remove(recipe);
                      });
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
