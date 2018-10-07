# RPS Challenge - Pokemon Battle!

<p align="center"><img src="./public/images/pokeball.png" width="100" height="100" /></p>

Tags: OOP, TDD, Ruby, HTML, CSS, Sinatra, MVC, RSpec, Capybara, Mocks/Doubles, Dependency Injection



What can you do?
-------

Take a break from work and battle some basic Pokemon:
<p align="center"><img src="./public/images/charmander.png" width="100" height="100" /><img src="./public/images/bulbasaur.png" width="100" height="100" /><img src="./public/images/squirtle.png" width="100" height="100" /></p>

In the style of rock, paper, scissors you can battle Pokemon either:
 - alone against the computer, or
 - together with a friend

Go forth and enjoy!



Model
-----

The web-app is built on Sinatra and the design is based on an MVC architecture:

<pre>
Controller & Router (app.rb)  
          |  
          |<----------> Model (game.rb --> player.rb/computer.rb)  
          |  
          |
          |<----------> View (HTML with embedded Ruby)
                          |
                          |
                          |<---------------> CSS (to add styling on your browser)

</pre>   

The Ruby classes are designed around the principle of single responsibility - only the Game class is instantiated in the Controller, and the Game class delegates player-related information to the Player class.

The program was built test-first using Capybara and RSpec (Capybara allows the user stories to be feature-tested). As with all good OOP testing, the classes are tested in isolation using dependency injection. All randomness is stubbed to ensure consistency of test results.



How to use
-----------

Fork the directory then run `bundle install`. I'd suggest using `rackup -p 4567` to start the webserver on your local machine. 

Then, in your browser, type in the following URL: `localhost:4567/`. This will take you to my homepage! Navigate through from there:
- Click on the pokeballs to select your game mode (single player or multiplayer)
- Enter your name(s)
- Select your Pokemon

After seeing the result, feel free to play the same game again or restart (go back to the homepage to re-select your game mode).



Running Tests
------------

The following test specs are included:
`./spec/features/features_spec.rb`
`./spec/game_spec.rb`
`./spec/player_spec.rb`

I also have some simple methods in `./spec/features/web_helpers.rb` to keep my feature tests DRY.

To run all my tests call `rspec` from the root of the directory.

All unit tests have been isolated using doubles through depedency injection. Randomness has also been stubbed.



User Stories
----

The game was built from the basic user stories below. I updated the theme so I could develop my HTML/CSS with some interesting fonts and images.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to battle basic Pokemon against a computer

As a marketeer
So that I can enjoy myself with my colleagues
I would like to be able to battle basic Pokemon with 1 other person
```



...

_We hope to see you again soon_

...
