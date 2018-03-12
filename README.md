# RPS Challenge

Here you will find my completed weekend challenge project for week 3 of Makers Academy. It is a simple game of Rock, Paper, Scissors, Lizard, Spock for two players. The players first enter their names and then take it in turns to choose their move. I first used radio buttons but didn't like the fact that players would have to close their eyes so they wouldn't see the other player's move. Consequently, I replaced the radio buttons with a password field that they would type their choice into. As there is a variation in the lengths of the choices, I made a key:
```
ro (Rock), pa (Paper), sc (Scissors), li (Lizard), sp (Spock)  
```

## Getting Started ##

Ruby version:
```
2.5.0
```
Run:
```
bundle install
```
To see the web app in your browser, run:
```
rackup -p 4567
```
Then type this in the url field of your browser:
```
http://localhost:4567
```
## Running the tests ##
The tests are separated by classes.
To run them all at once, type:
```
rspec
```

## Built with ##

- [Atom](https://atom.io/) - Text editor
- [Ruby](https://www.ruby-lang.org/en/) - Language
- [Rspec](http://rspec.info/) - Testing suite
- [Sinatra](http://sinatrarb.com/)
- Capybara
- HTML & CSS

## User stories ##

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
