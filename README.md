# RPS Challenge

User stories
-------

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
<br/>

Running the site locally
-------
Run `bundle install` in your terminal to acquire the relevant gems.<br/>

Once all gems are installed, run `rackup`.  This usually settles on `port 9292`, though you can append `-p [NUMBER]` to choose your own – for instance:
```
$ rackup -p 4567
```

Once the local server is running, open the site in your browser.  For `port 9292` you would need:
```
http://localhost:9292
```
All should be in order!<br/>
<br/>

Running the tests
-------
Run RSpec in your terminal to run all unit and feature tests.<br/>
Tests are written with `RSpec` and `Capybara`
```
$ rspec
```

Feel free to also run `Rubocop` – a ruby code-quality checker
```
$ rubocop
```
<br/>

Playing the game 
-------
### Home screen
<p align="center">
  <img src="/README images/Home.png" width="100%" title="Home page image">
</p>

Enter a name to begin; the name will persist until the player presses `Return To Menu`
<br/>

### Player choice
<p align="center">
  <img src="/README images/Player Choice.png" width="100%" title="Home page image">
</p>

The CPU opponent, `MA-3RPS3000` will make random moves in response to a players choices.<br/>
Each game results in a win, a loss or a draw.
<br/>

### Keeping score
<p align="center">
  <img src="/README images/Mid-Game.png" width="100%" title="Home page image">
</p>

The game will also keep track of the score so long as the player wishes to continue.<br/>
To start a new game, simply return to the home page and enter in a new name.<br/>
Feel free to play to infinity!
