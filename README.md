# My RPS Challenge

I developed my web app following the steps listed in the PLAN.md file.

# Features
```
Screenshots available in the screenshots directory
```
The user visits the home page ('/') and receives a welcoming message + an invite to enter their name in order to play rps(screenshot: Homepage.png).

When they submit their name, they get redirected to the route '/game', where they are asked for entering their move (screenshot: Gamepage.png).

They enter 'rock', 'paper' or 'scissors' to play and they get redirected to a specific route ('/won', '/lost' or '/draw') based on the result of the game that happens in the background (screenshots: Won-page.png, Lost-page.png and Draw-page.png)

In every result pages there is a button that is redirecting the player to the route '/game' where they can play again.


# Areas of improvement
I am very satisfied with what I've done because this was my very first solo web app! :)
However there are so many areas I can/would like to improve and this README won't be enough to list them all!
```
The player can actually input different words from the allowed moves. I've tried 2 options without being able to implement them:
- allowing the choice between 3 buttons (rock, paper or scissors) but I didn't manage to pass a string param value to the controller
- when the typed input was different from the specific words 'rock', 'paper' or 'scissors' I tried to redirect the player to an '/error' route displaying "This is not a valid move" and a button to redirect to the '/game' route
```
```
I used 2 classes, Player and Game. I could have used more because the Game class has too many responsibilities.
```
```
Capybara unit tests are minimal. I need to learn something more about it in order to make them more relevant
```
```
Using CSS in order to make the app be good looking. I haven't had a chance to look at CSS yet..
```

I'll be more than happy to receive a feedback and, hopefully, some actual suggestions on how to improve my rps-app! :)
