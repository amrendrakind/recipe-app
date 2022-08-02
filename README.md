![](https://img.shields.io/badge/Microverse-blueviolet)

# Recipe App

## Description

> The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby
- Ruby on Rails
- Postgress


## Development set up

Use the following steps to run this Project locally:

- Create a directory

- Open the terminal

- Run this command:
`git clone git@github.com:Juanse7793/Recipe-app.git`

- Enter in to the folder:
`cd Recipe-app`


### Setup Database 
- Make sure that your Postgres database is installed.
-  Open the file config\database.yml
- Modify the connection parameters to point your Postgres      Database:
    `username: [your_user]`
    `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases: `rake db:create`
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`


### Run Tests
- Install rspec: `bundle install`
- Run all tests: `rspec`
- Run all tests and show test documentation: `rspec spec --format documentation`

### Run App
- If required (Not for testing) run `rails server`
- Visit http://localhost:3000/ in your browser!

## Authors

👤 **Amrendra K**

- GitHub: [@amrendrakind](https://github.com/amrendrakind)
- Twitter: [@amrendrak_](https://twitter.com/@amrendrak_)
- LinkedIn: [amrendraakumar](https://linkedin.com/in/amrendraakumar)

👤 **Isaac Pitwa**

- GitHub: [@isaacpitwa](https://github.com/isaacpitwa)
- Twitter: [@isaacpitwa](https://twitter.com/isaacpitwa)
- LinkedIn: [Isaac Pitwa](https://linkedin.com/in/isaac-pitwa)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration


## 📝 License

This project is [MIT](./LICENSE) licensed.