# Sakila Video Store - Rails 6 Exploration App

**The purpose of this app is to do exploration into Ruby on Rails 6 and to test out gems and features that may normally be difficult or complex to execute.**

 - This app uses the MySql Sakila Video database (with encrypted
   credentials through the `credentials.yml.enc` file).
 - The first challenge was to integrate Rails with an already-existing
   database instead of creating one from scratch.  And also to be able
   to modify that existing database using Active Record and Migrations.

This app also uses of both modern and historical methods of live reloading:

Since this app is using Webpacker, it makes use of the `./bin/webpack-dev-server` in order to rebuild the JavaScript files upon changes.

However, this method of live reloading only works for the JavaScript portion of the app and not the `html.erb` files.  

In order to reload `html.erb` upon changes, we are using `rack-livereload` along with guard.

Normally this would require several terminals to be open at once, but this app uses the **Overmind** process manager along with a `Procfile.dev` to run all 3 commands at once.

This app is able to reload changes in SCSS, JavaScript, and ERB files all within one console command: `overmind s`instead of `rails s`

This also means the application will start on port `5000` instead of `3000`.