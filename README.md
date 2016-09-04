Rock Paper Scissors Game
========================

## Introduction

This is the third weekend challenge from Makers Academy and, as the title
suggests, the aim of the project was to build a Rock, Paper, Scissors game that
can be played within the browser. This application uses Ruby and Sinatra, along
with RSpec for testing.

## Instructions

In order to run this application, you will need to clone the repo and follow
the steps outlined below.

```
$ git clone https://github.com/jameshamann/rps-challenge.git
$ cd rps-challenge
$ bundle
$ # once all gems are installed, launch the application:
$ ruby app.rb
```
Once the application is launched, navigate to ``` localhost:4567```  in your
favourite browser.

## Code examples and explanation

This screenshot shows the homepage, where the player can enter and submit their
name.

![Imgur](http://i.imgur.com/KM2dxfY.png)

Once your name has been submitted, the page will redirect and look similar
to the screenshot below, with the players name highlighted. In order to play
you will need to choose an option by clicking a button and then once that
option has been chosen, you click the 'fight' button. Moving forward I would
like to implement a checkbox to take care of this as there is no visual
confirmation of the players choice.

![Imgur](http://i.imgur.com/i1AUnpH.png)

The page then redirects to the result page, which shows the choice for both the
player and computer as well as the winner or it states if the game was a draw.
The screenshot below shows an example of a draw.

![Imgur](http://i.imgur.com/GzSbyqF.png)

The player then has the option to play again, which directs back to the play
page. The screenshot below shows an example where the computer wins.

![Imgur](http://i.imgur.com/0Os9vi3.png)


## Test Coverage

Test coverage can be seen in the screenshot below using the Coveralls Report.
![Imgur](http://i.imgur.com/Q0ok1r2.png)


## Future Considerations

Moving forward, with more time, I would like to implement a bit more style and
colour to make the pages appealing. I would also look to implement a multiplayer
option for two human players.

## Author

James Hamann - https://github.com/jameshamann
