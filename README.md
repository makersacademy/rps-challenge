# RPS Challenge
A simple game of rock paper scissors against the computer.
Enter your name and play the computer. You can see the result each go and keep track of your tally on screen.

# Requirements
Ruby 3.0.0

# How to install
Run `bundle install`

# How to play
Run `rackup`
- Open browser and go to the localhost port provided in the terminal by the rack up command
- Enter your name
- Choose rock, paper or scissors

# Challenges

I found the set up to go smoothly and was able to get infrastructure in place.

I had difficulty making the method for calculating the result small enough as i wanted the result to not just say win or lose but show what was selected and so had have a choice made that was then passed as an argument into the outcome function in play.

I started to create the two player game and got the logic working in the ruby file but could not get the app.rb up and runningin two player mode. With a bit more time and perhaps simplifying to "player 1 wins" i could have achieved this quicker. 

Overall feel moderatley comfortable with sinatra and know i still need to practice a lot more to get it working. 

Also was able to stub the computer generated answer in my unit tests but not in the feature test which i will ask the tutors about.