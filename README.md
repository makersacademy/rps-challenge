# RPS Challenge: Rōnin Badge Test

I've implemented the basic game, with an option to use the extended rules
(ie Lizard and Spock). It also keeps a running total of the score, which
wasn't asked for but makes the game much more playable. I didn't have time
to implement a two-player option, but this shouldn't require too much work.
The game's pages are styled with rudimentary CSS to make it easier on the eye.

### rps_controller.rb

This is a simple 'skinny controller' with six methods: GET/POST for each of
the three pages. The GET methods all read data from the application and pass 
it to the template. The POST methods all change the game state then redirect.
Pages are rendered using straightforward .erb templates.

### lib/*

The application logic is in two singleton classes, `RpsGame` and `RpsRules`.
The game data is all stored in class instance variables (this avoids the need
to use global variables or session cookies).

`RpsRules` stores all the game rules: weapon names, rules for what beats what
and how. The weapons are stored as an array of strings. The rules are stored in
a hash – a typical rule is coded as `['Scissors', 'Paper']  => 'cuts'`,
meaning that `Scissors` beats `Paper` by cutting it.

The weapons array and rules hash are private. A public method `weapons` serves
up a copy of the weapons array. The rules can be queried using `check`. The
third public method `extend` turns the extended rules on and off.

`RpsGame` stores all the game data. The setup information is stored as a hash
in a class instance variable `@setup`. The results of a round are also stored
in a hash called `@results`. Both can be read publicly. The third class
instance variable `@rules` just points to `RpsRules`.

Most of this class's seven public methods query or set the game data in a
trivial manner. `enable_extended` tells the rules to switch extended mode on
(or off). `play` calculates the results of a round based on the data in `@setup`,
updates the scores, and stores the winner plus win message in the `@results` hash.

### spec/*

There are five feature tests covering: initialising a game, playing a round,
displaying the results, ending the round, dealing with extended rules. The
remaining spec files cover unit tests for `RpsGame` and `RpsRules` respectively.
