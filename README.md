RPS-Challenge
==================

Task
-------
Build a rock, paper, scissors game.

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

Work on this challenge as conclusion of week 3, to work towards these goals:

* I version-control my projects
* I use a methodical approach to solving problems
* I test-drive my code
* I can work to a specification
* I create effective documentation
* I can design and build user interfaces
* I can write standards-compliant, clean object-oriented code

Instructions to run this at home
-----

$ git clone git@github.com:fbl11/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup

STATUS
-----
Allows users to play a game of Rock, Paper, Lizard, Scissors, Spock against a computer using a web interface.

This version completes all basic user stories and adds choices 'Lizard' and 'Spock' to the original weapons.

Controller
includes
- rps_app.rb
- feature_spec.rb testing all features
- web_helbers.rb to automate common steps in feature_spec.rb

Views
include
- index.erb
- play.erb
- result.erb

Model
includes
- weapons.rb / weapons_spec.rb
- player.rb / player_spec.rb
- game.rb / game_spec.rb

No rubocop offenses, 100% overall test coverage according to Rspec.

**Notes**
takeaway.rb includes 'inspect' method:
```
  def inspect
    "Takeaway"
  end
```
Uncomment to make IRB output easier to read.

**TO DO**

- Unit tests for Twilio / SMS order confirmation (sms_sender_spec.rb)
- refactoring (including removing numbers from specs)
- tidy up order.rb methods to ensure single responsibility (formatting should be done somewhere else - maybe in takeaway)
- fix heredoc indentation problem
- integrate use of files to load menu items into menu

Notes on use in IRB
------------------
```
2.5.0 :001 > require './lib/order.rb'
 => true
2.5.0 :002 > require './lib/menu.rb'
 => true
2.5.0 :003 > require './lib/menu_item.rb'
 => false
2.5.0 :004 > require './lib/takeaway.rb'
 => true
2.5.0 :005 > ta = Takeaway.new
 => #<Takeaway:0x00007ffe4a01c138 @menu=#<Menu:0x00007ffe49153e30 @items=[#<MenuItem:0x00007ffe49152f08 @name="Pizza", @price=8>, #<MenuItem:0x00007ffe49151a68 @name="Burger", @price=9>, #<MenuItem:0x00007ffe491518b0 @name="Chips", @price=4.5>]>, @order=#<Order:0x00007ffe49151770 @basket={}>>
2.5.0 :006 > ta.read_menu
1. Pizza: £8.00
2. Burger: £9.00
3. Chips: £4.50
 => [#<MenuItem:0x00007ffe49152f08 @name="Pizza", @price=8>, #<MenuItem:0x00007ffe49151a68 @name="Burger", @price=9>, #<MenuItem:0x00007ffe491518b0 @name="Chips", @price=4.5>]
2.5.0 :007 > ta.order_item('Chips', 2)
 => 2
2.5.0 :008 > ta.order_item('Pizza')
 => 1
2.5.0 :009 > ta.order_item('Curry', 2)
RuntimeError (This dish is not on the menu!)
2.5.0 :010 > ta.show_order_basket
Chips: £4.50 x 2
Pizza: £8.00 x 1
 => {#<MenuItem:0x00007ffe491518b0 @name="Chips", @price=4.5>=>2, #<MenuItem:0x00007ffe49152f08 @name="Pizza", @price=8>=>1}
2.5.0 :011 > ta.show_order_subtotals
Chips x 2: £9.00
Pizza x 1: £8.00
 => {#<MenuItem:0x00007ffe491518b0 @name="Chips", @price=4.5>=>2, #<MenuItem:0x00007ffe49152f08 @name="Pizza", @price=8>=>1}
2.5.0 :012 > ta.show_order_total
Total: £17.00
 => nil
2.5.0 :013 > ta.checkout(15)
RuntimeError (Totals do not match!)
2.5.0 :014 > ta.checkout
You will receive a confirmation text shortly.
```

User stories
-----
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors/lizard/spock

As a marketeer
So I can choose my weapon
I would be presented with choices (rock, paper, scissors, lizard, spock)

As a marketeer
So I can play against an opponent
the game will choose a random weapon for a computer opponent

As a marketeer
So I know whether I've won
the game will declare a winner based on the players' moves

```

Author
-----
Freya Becker [fbl11](https://github.com/fbl11/)