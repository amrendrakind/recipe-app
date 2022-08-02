# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

isaac = User.create(name: 'Isaac')
augusto = User.create(name: 'Augusto')
jorge = User.create(name: 'Jorge')
pepe = User.create(name: 'Pepe')

food1 = Food.create(name: 'Food1', measurement_unit: 'g', price: 10.5, quantity: 10, user: isaac)
food2 = Food.create(name: 'Food2', measurement_unit: 'kg', price: 20.5, quantity: 20, user: isaac)
food3 = Food.create(name: 'Food3', measurement_unit: 'g', price: 30.5, quantity: 30, user: augusto)
food4 = Food.create(name: 'Food4', measurement_unit: 'kg', price: 40.5, quantity: 40, user: jorge)
food5 = Food.create(name: 'Food5', measurement_unit: 'g', price: 50.5, quantity: 50, user: pepe)

receipt1 = Receipt.create(name: 'Receipt1', preparation_time: 10.5, cooking_time: 20.5, description: 'Description1', public: true, user: isaac)
receipt2 = Receipt.create(name: 'Receipt2', preparation_time: 30.5, cooking_time: 40.5, description: 'Description2', public: false, user: isaac)
receipt3 = Receipt.create(name: 'Receipt3', preparation_time: 50.5, cooking_time: 60.5, description: 'Description3', public: true, user: augusto)
receipt4 = Receipt.create(name: 'Receipt4', preparation_time: 70.5, cooking_time: 80.5, description: 'Description4', public: false, user: jorge)
receipt5 = Receipt.create(name: 'Receipt5', preparation_time: 90.5, cooking_time: 100.5, description: 'Description5', public: true, user: pepe)

recipefood1 = RecipeFood.create(quantity: 10, food: food1, receipt: receipt1)
recipefood2 = RecipeFood.create(quantity: 20, food: food2, receipt: receipt2)
recipefood3 = RecipeFood.create(quantity: 30, food: food3, receipt: receipt3)
recipefood4 = RecipeFood.create(quantity: 40, food: food4, receipt: receipt4)
recipefood5 = RecipeFood.create(quantity: 50, food: food5, receipt: receipt5)