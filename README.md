#TRUMP PAPER SCISSORS


Heard enough about Donald Trump? Too bad.
This political twist on a classic brings the obnoxious fake-tanned
disaster straight from the debating stage to your bedroom.

Our main Game class has 2 dependent classes: Player and Trump.

The Player class contains a method for taking the input from the button pressed
in the choose.erb view and passing that as the weapon_choice to the

Trump contains methods for automatically selecting a random counter-choice so
that Game can calculate the winner.

Based on that outcome it also then requests and prints a suitably
obnoxious reponse from Trump.

Coveralls being used to test the coverage of Rspec tests.


Instructions for Running from Terminal
-------------------------------------

```sh
$ git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
