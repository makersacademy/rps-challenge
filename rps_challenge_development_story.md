# rps-challenge development steps

## Image Sources

All images, audio and material design icons used in the development of this project were from the following royalty free websites:  

1. https://www.pexels.com/
2. https://materialdesignicons.com/
3. http://freemusicarchive.org/
4. http://soundbible.com/

## Learning Diary

The most important concepts that I learned:

### Using Sinatra Keyword 'set'

In its simplest form, the set method takes a setting name and value and creates an attribute on the application.

set :views          , File.expand_path('../lib/views', __FILE__)

A string specifying the directory where view templates are located. By default, this is assumed to be a directory named “views” within the application’s root directory (see the :root setting). In the example above I have set the path for lib/views.

set :public_folder, File.dirname(__FILE__)

The above keyword, ":public_folder", is a string specifying the directory where static files should be served from.
Static files being files that are not dynamic like the html view files, css stylesheets, images, music etc. By default,
this is assumed to be a directory named “public or Public” within the root directory (see the :root setting). You can set
the public directory explicitly after the comma, in the example above I have set it as the directory of where the app file
resides which is already the root directory.

## Use of Web Helpers

I learned to use Web Helpers, a class with methods that do all the interactive execution for Capybara testing such as visiting,
signing in and clicking a button. Web Helpers can be initiated inside the Capybara/RSpec feature tests and their methods called so we don't have to always type out the interaction manually for our tests.

## Linking CSS Stylesheets

In relation to the ":public_folder" path. I learned how to import CSS stylesheets to my html view files using the html
<link> tag and the 'href' attribute to specify the path to my CSS stylesheet file.

## Using Classes and Applying Single Responsibility Principle in a Front-End Environment

Admittedly, I struggled with this as it was my first time building a web app. In order to try and maintain single responsibility principle and keeping code DRY, I made three objects, Game, Player and Computer.

The Game's responsibility was to assign a point to the winner of the round, find the winner, and also check to see if the
game should end as the player or computer has won two rounds (best of three).

Both Player and Computer would be responsible for choose their hand: rock, paper or scissors.

The app/controller would pass the class methods and attributes through posts and redirect to relevant pages. I made the controller responsible for starting a new game through the homepage sign in but I was unsure whether to assign this responsibility to the Game class.
