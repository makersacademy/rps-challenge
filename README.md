# RPS Challenge - Pokemon Battle!

<p align="center"><img src="./public/images/pokeball.png" width="100" height="100" /></p>

Tags: OOP, TDD, Ruby, HTML, CSS, Sinatra, MVC, RSpec, Capybara, Mocks/Doubles, Dependency Injection


What can you do?
-------

Take a break from work and battle some basic Pokemon:
<p align="center"><img src="./public/images/charmander.png" width="100" height="100" /><img src="./public/images/bulbasaur.png" width="100" height="100" /><img src="./public/images/squirtle.png" width="100" height="100" /></p>

In the style of rock, paper, scissors you can battle Pokemon either:
* in a single-player mode against the computer, or
* together with a friend

Go forth and enjoy!


Model
-----

The web-app is built using Sinatra web server using a simple MVC architecture:

<pre>
Controller & Router (app.rb)  
          |  
          |<----------> Model (game.rb --> player.rb)  
          |  
          |
          |<----------> View (HTML with embedded Ruby)
                          |
                          |
                          |<---------------> CSS (to add styling on your browser)

</pre>   

The Ruby classes are based on the principle of single responsibility - only the Game class is instantiated in the Controller, and the Game class delegates player-related information to the Player class.

The program was built test-first using Capybara and RSpec. Capybara allowed the user stories to be feature-tested. As with all good OOP testing, the classes are tested in isolation using dependency injection. All randomness is stubbed to ensure consistency of test results.


User Stories
----

The game was built from these basic user stories. I updated the theme so I could practice my HTML/CSS with some interesting fonts and images.

```sh
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
