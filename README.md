# RPS Challenge

Description
-------

This Rock, Paper, Scissor web app is built using `Sinatra`. It allows the user to play _Rock, Paper, Scissors_ against the computer

- the player can be enter their name before the game
- the player is be presented the choices (rock, paper and scissors)
- the player can choose one option
- the game chooses a random option
- a winner is declared

Installation
-------

`git clone https://github.com/CazaBelle/rps-challenge`

`bundle` to install required gems

`rackup` This will open a local server for you to interact with the app. The app is run via the `config.ru` file so running `shotgun` will not demonstrate apps functionally

User Stories
----

This program currently meets the requirements of the below user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Basic Rules
-------

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
 want this weekend.

 Tests
-----

run `rspec` in the command line

Planned Extensions
-----
- Score tracking so that user knows how many times they have won
- Multi player option 
- Randomize image on 



Takeaway Challenge - Caz's Calzones 
==================

Description
-------

This takeaway program uses Ruby to manage its ordering process. It currently supports the following features:

* Reading the full menu
* Adding items to your order
* Checking the total cost of your current order and confirming if it is correct
* Place an order that sends a text to the user confirming delivery time (1 hour from checkout)

Installation
-----

`git clone https://github.com/CazaBelle/takeaway-challenge.git`
 
`bundle` to install all required gems

Require a `twilio` account with a verified `account_sid` and `auth_token`


Instructions
-----
`order = Order.new`

`order.show_menu`

`order.take_order(item_wanted_from_menu)` repeat this process for as many items you would like to add to basket

`order.print_basket` to confirm items and total

`order.complete_order` to receive a sms to confirm delivery time

Customer stories
-----

This program currently meets the requirements of the below user stories:

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```

API Reference
-----

Built using `Twilio-Ruby`



Resources 
------------------
* How to map over an array of hashes: https://medium.freecodecamp.org/ruby-using-the-select-map-and-reduce-methods-together-a9b2af30804b

