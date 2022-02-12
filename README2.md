# RPS Challenge

My approach
-------

The increased complexity of this challenge required a larger planning stage.

I spent some time reviewing my notes for the week, as well as the walkthroughs for the Battle Challenge. This included outlining diagrammatically how the model, views and controllers interacted with each other.

I then spent some time reviewing how to use class instance variables in lieu of global variables.

I then considered my approach to coding RPS. I decided it was best to start by coding and testing the model (the ruby files for the RPS game itself) in isolation. My rationale was that the model should be logically independent of how it is presented to the user, ie independent of the views and the controller. Any changes I might need to make to the model should be superficial but this approach, I reasoned, would reduce the number of things to consider in parallel. I made use of a class instance variable.

Once the model was complete, I coded the controller and views in parallel. I referred to a rough diagram I had constructed that outlined the html pages and their http response types (GET or POST). This was relatively straight-forward and the biggest challenge was debugging, given that there were a number of new technologies introduced over the past week that I'm not 100% familiar with. I made a single, small change to the model, changing the user choice input (of rock, paper or scissors) from gets.chomp to simply passing an argument. I also made use of radio buttons for making the user choice. This enabled me to use new html elements and also neatly avoided the issue of user typos (eg, a user types "Rck" rather than "Rock").

## Next steps

The core functionality is all there, but it isn't a very pretty thing to interact with. It would be elementary to add some images and change the formatting, which I might return to.

The extension challenge is to add in a second human player. This would require relatively few changes to the model. As I see it, a more interesting challenge would be to offer the first player the choice of playing against another human or the computer. The challenge in ruby would be to allow this choice while keeping the code as DRY as possible.

## Comments

I'd like to be stricter at producing my code with TDD, and review how to stub out randomness. The test on lines 27-35 in game_spec.rb doesn't work, and I ran out of time to figure out why.

Line 11 in judge.rb is too long, which rubocop dislikes. I could change this to a case-when structure. Rubocop also thinks that this condition is too complex. I wonder if it will consider it to be too complex once refactored - I suspect not, raising an inconsistency that questions how complexity is being measured.

I've also ignored rubocop's preference for 'normalcase for symbol numbers' in game.rb -  it dislikes 'player_1' and I think it wants 'player1'.

Also, a few aspects of the server and capybara test files are obscure to me at the moment, and I'm not sure why certain things exist, or exist in certain places. I'd like to clarify this going forward, eg what does the below actually do?:

```
RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end
```
Finally, my spec_helper file and gemfile are messy. I'm not sure everything needs to be there or in those places. I'd like to tidy this aspect up in future.