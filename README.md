# RPS Challenge: Rōnin Badge Test

## Instructions
-------
* Easy Peasy.... choose the number of players (only supports one right now!)
* Choose your weapon and take on the computer.

## Enhancements coming soon
----
* Two-player mode: pit your pattern recognition skills against a friend.
* Game choice: traditional RPS or more challenging RPS Lizard Spock version.
* Game winner: set game points and play to that level for the crown "Champion"

## Installation instructions
```ruby
$ git clone git@github.com:shaneoston72/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby app.#!/usr/bin/env ruby -wKU
```
In your browser, visit localhost:4567. Enjoy!

## Approach
The game is extraordinarily simple in its implementation.  The game uses a randomize to select the computer's weapon and compares it according to standard RPS rules to derive a winner. The app is using a Sinatra front-end of basic HTML and elementary CSS and a Ruby backend.  The Ruby backend is built using two classes, Game and Player.  

Future enhancements will require additional front-end views and Ruby classes to accomodate game types and multiple players.

## Impressions
This challenge was difficult in that I was excited to get started and neglected the TDD mantra of "Write a test, fail a test, pass a test, refactor, move on." This required me to step back and apply the methodology to get back on track. From that point, the app naturally evolved (e.g. TDD works!).  I ran into a bug that was not exposed by the tests as feature and unit tests passed.  Thanks to the great contribution of my cohort mate, Lorenzo, I was able to resolve it.
