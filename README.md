# RPS Challenge

**Try it out here: https://peters-rock-paper-scissors.herokuapp.com/**

## How to run
```ruby
shotgun install
ruby app.rb
```

## Notes
* Based on the instructions here: https://github.com/makersacademy/rps-challenge
* Test-driven using RSpec with Capybara. Test coverage is 100%
* Didn't get time to implement the stretch features, but app is set up with them in mind so it wouldn't be too hard to do so.

## Next steps
* Would be good to work on the stretch features as mentioned above
* Printing out game status should probably be extracted to a new class, out of the Game class
* Tests can be improved and refactored, particularly the app logic feature tests (not sure the real words to describe these) which don't currently assert anything and were mostly being used for debugging
* CSS could be polished a bit
* Didn't spend much time trying to make classes DRY, so more could almost certainly be done there
* Could I make the ComputerPlayer class extend the Player class?