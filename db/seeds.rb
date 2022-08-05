# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

isaac = User.create(name: 'Isaac', email: 'isaac@gmail.com', password: '123456')
augusto = User.create(name: 'Augusto', email: 'augusto@gmail.com', password: '123456')
jorge = User.create(name: 'Jorge', email: 'jorge@gmail.com', password: '123456')
pepe = User.create(name: 'Pepe', email: 'pepe@gmail.com', password: '123456')
amar = User.create(name: 'amar', email: 'amar@gmail.com', password: '123456')

food1 = Food.create(name: 'Food1', measurement_unit: 'g', price: 10.5, quantity: 10, user: isaac)
food2 = Food.create(name: 'Food2', measurement_unit: 'kg', price: 20.5, quantity: 20, user: isaac)
food3 = Food.create(name: 'Food3', measurement_unit: 'g', price: 30.5, quantity: 30, user: augusto)
food4 = Food.create(name: 'Food4', measurement_unit: 'kg', price: 40.5, quantity: 40, user: jorge)
food5 = Food.create(name: 'Food5', measurement_unit: 'g', price: 50.5, quantity: 50, user: pepe)

recipe1 = Recipe.create(name: 'Recipe1', preparation_time: 10.5, cooking_time: 20.5, description: 'Description1', public: true, user: isaac)
recipe2 = Recipe.create(name: 'Recipe2', preparation_time: 30.5, cooking_time: 40.5, description: 'Description2', public: false, user: isaac)
recipe3 = Recipe.create(name: 'Recipe3', preparation_time: 50.5, cooking_time: 60.5, description: 'Description3', public: true, user: augusto)
recipe4 = Recipe.create(name: 'Recipe4', preparation_time: 70.5, cooking_time: 80.5, description: 'Description4', public: false, user: jorge)
recipe5 = Recipe.create(name: 'Recipe5', preparation_time: 90.5, cooking_time: 100.5, description: 'Description5', public: true, user: pepe)

recipefood1 = RecipeFood.create(quantity: 10, food: food1, recipe: recipe1)
recipefood2 = RecipeFood.create(quantity: 20, food: food2, recipe: recipe2)
recipefood3 = RecipeFood.create(quantity: 30, food: food3, recipe: recipe3)
recipefood4 = RecipeFood.create(quantity: 40, food: food4, recipe: recipe4)
recipefood5 = RecipeFood.create(quantity: 50, food: food5, recipe: recipe5)