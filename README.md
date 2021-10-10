## Bernard's RPS Challenge

I started by feature testing the ability to enter a name and it be displayed. This was achieved by test driving two new objects
Player and Game. When form was sent to it's via post request to it's input route on app.rb via the controller, that name
was stored onto a player object instace created along with a game which holds the two player instances.

next was player choice, learned about radio forms with only one choice possible. Player then chooses rock paper or scissors,
can only do one choice. this is stored onto the player object

the computer then chooses at random

I struggled to write the feature test in showing the winner from a random computer choice, will have to find out how to use doubles on the feature 
capybara side of things.

In the time available I managed to get the thing to work and display the correct result, but when you go back and enter the same name again, the
outcome is fixed for some reason. Didn't get time to fix this.