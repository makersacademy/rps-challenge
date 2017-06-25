# RPS Challenge

Strap into your console and play Rock Paper Scissors in **cyberspace!**

Some highlight features:
- 4 colour display!
- High tech cyberspace visuals!
- An AI opponent that doesn't cheat.

All tests are passing with 100% coverage. I went overboard with my Capybara-driven feature tests in the [weekly challenge](https://github.com/tbscanlon/battle), so I made a point of not going quite as crazy for this one. Somehow, I have still ended up with 29 tests in total, which is a lot for the amount of code this app comprises in my opinion.

This was - by an order of magnitude - the hardest challenge thus far. My main difficulty came from the need to have 3 potential outcomes for each game of RPS: win, lose, or draw. I got bogged down in design minutae for most of a day and ended up rushing a bit towards the end.

I had wanted to implement multiplayer in this challenge; my class design (and attempt at polymorphism) reflects this. Unfortunately, I ran out of time because of how difficult this challenge was.

This app was made for the week 3 weekend challenge for Makers Academy. At the time of writing, I'm dreading whatever comes next.

## Installation
1. Clone this repo by running `git clone git@github.com:tbscanlon/rps-challenge.git` from your terminal
2. Navigate to the project folder: `cd rps-challenge/`.
3. Install dependencies by running `bundle install` (you may need to `gem install bundle`).

## Usage
1. Run `rackup -p 4567` in the project folder.
2. Open your favourite web browser (unless it's Internet Explorer, in which case I advise you to stop and consider your life choices) and navigate to `http://localhost:4567`.

## Code Examples

### Rules
```ruby
RULES = {
  rock: :scissors,
  scissors: :paper,
  paper: :rock
}
```
### Computing the Outcome of a Game of RPS
```ruby
class weapon

  # ...a few methods...

  def <=>(other)
    return 1 if RULES[type] == other.type
    return -1 if RULES[other.type] == type
    0
  end
end

rock = Weapon.new(:rock)
scissors = Weapon.new(:scissors)

rock <=> scissors # => 1
scissors <=> rock # => -1
rock <=> rock # => 0
```

### Using class methods for Persistence Across Multiple Webpages
```ruby
# ./lib/game.rb
class Game
  attr_reader :player1, :player2, :weapon1, :weapon2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  # ...instance methods...
end

# ./app.rb
class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  #...routes...
end
```

### Deferring Rendering Logic to the Model
```ruby
# ./lib/game.rb
class Game
  #...other methods...
  def result(weapon1, weapon2)
    register_weapons(weapon1, weapon2)
    determine_outcome
  end # => returns :win, :lose or :draw

  private
  def register_weapons(weapon1, weapon2)
    @weapon1 = weapon1
    @weapon2 = weapon2
  end

  def determine_outcome
    case weapon1 <=> weapon2
    when 1 then :win
    when -1 then :lose
    else :draw
    end
  end
end

# ./app.rb
post '/attack' do
  choice = params.first.first.to_sym
  erb @game.result(Weapon.new(@game.player1.choose(choice)), Weapon.new(@game.player2.choose)) # => erb :win || erb :lose || erb :draw
end
```

## Credits
- Icons by [Hugo Alberto](https://thenounproject.com/hugugolplex/).
- The grid MP4 came from Youtube. I can't track down where I got it, sorry!

## User Stories
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
