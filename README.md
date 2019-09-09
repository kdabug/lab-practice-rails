# PRACTIC LAB: Auth -> Rails with React

This lab is meant to build your skills in creating a react-rails app that can do that auth thing. Extending your students-app. Only users that `create` a student can `edit` or `delete` that student.

**GOAL: GET PAST AUTH!!**

![](https://media.giphy.com/media/xUNd9Ae1eruXErfzXO/giphy.gif)

## DELIVERABLE:

Your goal in this assignment is to be able to create a Rails app with Auth and a React front end **not from memory, but from following along with an example**. So find that example connected to the [rails-with-react-auth](https://git.generalassemb.ly/sei-nyc-cicadas/rails-with-react-auth) lesson.

- Continue to build your Rails API so that it can `login` and `register` users.
- Design a `login` and `register` form in your React client.
- Allow logged-in users to `create` students
- Only users that created a student can access the `edit` form to edit and `delete` their created student.
- Style your app.
- Deploy your new app (Rails API + React client) which now includes full CRUD functionality **AND AUTH**.

## Extending your current Rails API

1. Fork
2. Create a feature branch
3. Clone
4. Scaffold a `Users` controller `rails g scaffold User username:string email:string password_digest:string`.
5. Install `bcrypt`.
6. Update your Rails controllers with any `before_action`.
7. Add all appropriate authentication controllers and routes.

## Adding to React

Time to update your React frontend with user forms and connect it to your Rails Auth.

1.  Make sure your 'client' folder exists in your rails app (copied from last lab).
1.  Make sure all dependencies installed in client folder.
1.  Make routes and functionality for full CRUD for all students.
1.  Add user `login` and `register` form.
1.  CONTSTRAINTS:

- Only a logged-in user can `create` a student
- Only a user that `creates` a student can `edit` or `delete` that student.

4.  Style: **flex-box**, grid, third-party library, etc.
5.  Bring it together AGAIN-> **Deploy** your beautiful FULL CRUD + AUTH student api and client!

## Tips:

(https://www.railstutorial.org/book/filling_in_the_layout#sec-rails_routes) chapter
