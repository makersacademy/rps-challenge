# RPS CHALLENGE

I wrote an implementation of Rock, Paper, Scissors, in response to the specification in CHALLENGE.md

There were two user stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Although I started off with different classes for Game and Player (and attendant tests, using doubles, etc) I took these out as I felt they were encapsulation for encapsulation's sake (e.g. a Player class for only one player, with only one attribute) and were overcomplicating matters.

As a result this app ended up a lot simpler than during my initial planning and I spent a lot of saved time beautifying it!

## Assesment


### Succeeded


- Player is able to enter their name
- Player is able to play Rock, Paper, Scissors against the computer's random moves
- Code style is pretty nice
- 100% test coverage, with rspec & Capybara, including:
  - All classes and module behaviour tested
  - Routes tested
  - Views tested
- Aesthetically pleasing design
- Single page game interface for nice user experience
- Animated feedback to provide an indicator of page updates
- Written in an _almost_ totally TDD way, apart from a short lapse during a radical rewrite
- Put repetitive Capybara instructions in web_helpers.rb to reduce repetition in the tests
- Seperated unit & feature tests
- Shared HTML put in layout.erb to reduce repetition in the views


### Failed


- Didn't implement the additional game rules because I couldn't find an image of a lizard in an acceptably matching art style!
- Didn't implement multiplayer functionality


### TODO


- Things I failed above, plus -
- Counter to keep track of rounds won
- *True* multiplayer, maybe using the [litecable](https://github.com/palkan/litecable) gem?
- I feel like there's an inordinate amount of instance variable-setting in my controller. I don't know if this is just inevitable, or there's a best way to factor this out, so TORESEARCH

## Implementation

---
### Technologies & Assets
---

- Ruby
- Sinatra
- HTML
- CSS
- Wow, no Javascript!

- Animations from [Animate.css](https://animate.style/)
- Rock Paper Scissor illustrations found on [openclipart](https://openclipart.org/artist/mazeo)
- Background gradient made with [cssgradient.io](https://cssgradient.io/)

- Testing
  - RSPEC
  - Capybara w/ Selenium
  - Manual testing in Chrome
  - Testing with Capybara in PRY
  - rack_session_access gem for testing session vars


### Routes


  The app has 4 routes

  * `/`
    - method: **GET**

    - view: `welcome.erb`

    - reached when a user first visits the site, or tries to visit the `/play` route without entering their name first

    - contains a header and a form, asking the player for their name, which is posted to...

  * `/create-player`

    - method: **POST**

    - creates `session[:player]` variable from params
    - redirects to...

  * `/play`

    - method: **GET**

    - view: `play.erb`

    - first time it is visited, simply prompts the player to make a move by clicking on an image

    - on subsequent visits it shows the results of the previous round and prompts the player to play again

    - which behaviour it displays is decided by the existence of the `session[:winner]` variable

    - the player's choice is submitted to...

  * `/move`

    - method: **POST**

    - sets session variables:

      - `session[:player_move]` from params

      - `session[:robot_move]` from calling `Game.random_move`

      - `session[:winner]` from calling `Game.judge` with the above two variables as arguments
    
    - redirects back to `/play`


### Classes and Modules


  The app has two of these

  - the `RPS` class is the main Sinatra app

  - the `Game` module which holds

    -  a nested hash `@move` for looking up which moves beat which

    - a method `self.random_move` which returns a move sampled from the keys of the above hash

    - a method `self.judge` which compares the moves passed to it, and returns `-1`, `0`, `1` (just like the `<=>` operator) for _left arg wins_, _args are equal_, and _right arg wins_ respectively


### Screenshots


![welcome view](https://github.com/sa-mcquanzie/rps-challenge/blob/main/screenshots/welcome.png?raw=true)



