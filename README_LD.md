Summary
----
* Found this challenge very challenging! Identified a lot of gaps in my learning and decided to go over the course material rather than continue with the challenge.

* Understand the MVC layout structure and feature testing process. But unsure of how input (such as a ticked checkbox) can be stored and used by the model (game.rb). 

* Wrote rspec tests for rock paper scissor game, and then wrote the logic, then tested this in irb and needed to tweak my code, but then the rspec tests failed and I couldn't figure out how to make them pass. It could be something to do with my stubbing. 


Plan
----
* `/` root page --(GET request) 
  * views: play game button and field for name 
  * action: enter name

* `/name` page --(POST request)
  * views: no view, redirect to `/play` page

* `/play` page --(GET request)
  * views: rock paper scissor as checkboxes
  * action: select one

* `/input` page --(POST request)
  * views: no view, redirect to `result` page

* `/result` page --(GET request)
  * views: player_name won / lost, button to play again
  * action: click_button redirect to `play` page 

* `game.rb` model - computer provides random answer (.opponent method) and returns result (.result method)

Task
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
