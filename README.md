![](https://img.shields.io/badge/Microverse-

# Office Frei Budget App

> The Blog app will be a classic example of a blog website. You will create a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.


## Live Demo
 For a live demo of the project [click here](https://officefrei.herokuapp.com/). Please log in with the following pre-verified credentials:


## Development set up

Use the following steps to run this Project locally:

- Create a directory

- Open the terminal

- Run this command:
`git clone https://github.com/AminaBuhari/Budget-App.git`

- Enter in to the folder:
`cd budget-app`


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


## Built With

- Ruby
- Ruby on Rails
- Postgress

## 👤 **Author**
👤 **Amina Buhari**

- GitHub: [@githubhandle](https://github.com/AminaBuhari)
- Twitter: [@twitterhandle](https://twitter.com/AminaBuhari)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/amina-buhari/)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!


## Acknowledgement
#### Original design idea by **[Gregoire Vella on Behance](https://www.behance.net/gregoirevella)**, in association with the [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/) of the design.

