# ABM Web - Create Your Todo List & Diary

Smith College CSC151: Programming Language Concepts

This is a Ruby on Rails web site where users can create their own todo list and write a diary. Users can easily organize their day by using the todo list and make a time to reflect their day by writing the diary whenever they want. 

From the college students' perspectives, we implemented not only the todo list but also the diary to our web app. We hope to support busy college students' academic part of the life as well as their mental health. 

![abmweb home](app/assets/images/top-page.png)
![abmweb todo](app/assets/images/todo-page.png)
![abmweb diary](app/assets/images/diary-page.png)

## Environmental Configuration
Before using our web app, make sure that you have installed Ruby on Rails to your machine. 

* Mac Users: [Install Ruby on Rails](https://mac.install.guide/rubyonrails/index.html)
* Windows Users: [Install Ruby on Rails](https://gorails.com/setup/windows/10)

## General Configuration
Following steps explains how to set the your development environment. Please keep a log so that you can go back anytime you confront errors. 

1. Fork and Clone abmweb repo
    - Visit ABM Web GitHub page and click fork at the top right of the page. 
    - Create local copy of your fork with: `git clone https://github.com/<username>/abmweb.git`

2. Install MySQL 8 and Ruby 3.1.1 
    - Mac Users: 
        * [Install MySQL 8](https://dev.mysql.com/downloads/mysql)
        * [Install Ruby 3.1.1](https://mac.install.guide/ruby/index.html)

    Check your version of Ruby before you go to the next step. On the terminal, change directory (`cd abmweb`) and then do `ruby -v`. 

3. Install essential gems
    - Disable gem docs
    - Install Rails 6.1.5 
    - Install MySQL gem
    - Install all the required gems

4. Configure database encironment variables

5. Prepare databse in MySQL
    - In the terminal, run `rake db:create`

6. Run database migrations
    - In the terminal, run `rake db:migrate`

7. Try running app!
    - Launch the server by using `rails s` or `rails server` in the terminal
    - Open *localhost:3000* in your choice of browser
    - App is successfully running if you see the top page of ABM Web which has sign up/sign in buttons. 
