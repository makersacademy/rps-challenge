
![makersacademy](media/ma_logo.png)

**week 3 / weekend challenge**

# The challenge

This weekend challenge is to create a Rock/Paper/Scissor Game using our newly learned skills in Ruby/Sinatra/HTML/CSS.
NOTE: Please excuse the use of Ruby $global variables; we haven't yet touched on databases during the course!

## User stories

```
As a user
So that I can see my name in lights
I would like to register my name before playing the game

As a user
So that I can play my turn
I need to be able to choose one option between paper/scissors/rock

As a user
So that I can play against the computer
I need to be able to see the choice the computer has made

As a user
So that I can see who won the turn
I need to see a confirmation of who won the turn

As a user
So that I can see if the turn was tie
I need to see a confirmation that the turn was tie

As a user
So that I can see who is more likely to win
I need to see a summary of the score for each turn

As a user
So that I can see who won the game
I need to see a confirmation of who won the game when the score reaches 3

```

# Implementation

My implementation was driven by acceptance unit test cycles. The final implementation has 3 classes with defined responsabilities.

## Modules & gems

* yaml
* twilio-ruby


## Classes

### Menu

Menu allows to view all dishes and find dishes from a .yml file. A different file to read the menu from can be passed as argument (the file is located in lib/resources/).
```
menu = Menu.new('pizza_restaurant.yml')
```
It receives the following messages:
* view menu
* find(dish)

### Order

Order allows to store added dishes, review the order with the total price, and place the order. Every instance of Order instantiate a Menu as well (a default menu is passed as argument to menu class).
When the order is placed an SMS is created and the message send is called on it.
It receives the following messages:
* add(dish, qty)
* review
* place

### Sms

Sms allows to send an SMS using [Twilio REST API](https://www.twilio.com/docs/api/rest) passing the method the delivery time.
It receives the following messages:
* send(delivery_time)


## Data

* A .yml file in /lib/resources stores all the menu data
* Twilio tokens are stored in a .gitignored .yml file


## Future improvements

* extract from Order a new class that deals with the stored dishes, has total price and total number of dishes. Order shoul donly deal with the logistics.
* stub the send_text method so that the sms is not sent when testing
* use ENV variables in .yml file
* refactor find, print_menu methods for Menu class
* prevent user from adding the same dish and just increase its qty
* reset order after is succesfully placed
* allow users to order via SMS
* improve refactoring
