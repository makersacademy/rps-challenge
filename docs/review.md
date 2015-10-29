# Introduction
Welcome to the code review for RPS Challenge!  Again, don't worry - you are not expected to have all the answers. The following is a code-review scaffold for RPS Challenge that you can follow if you want to.  These are common issues to look out for in this challenge - but you may decide to take your own route.

If you don't feel comfortable giving technical feedback at this stage, try going through this guide with your reviewee and review the code together.

Please use this form to tick off where your reviewee has successfully has successfully incorporated these guidelines!  This form helps us get an overall picture of how the whole cohort is doing - it's not an assessment of an individual student.

# Step 0: Checkout and Run tests

Please checkout your reviewee's code and run their tests. Read the code and try and play the game through the web interface.  You can also experiment with the engine in IRB. How easy is it to understand the structure of their code? How readable is their code? Did you need to make any cognitive leaps to 'get it'?

# Step 1: Structure and supporting files

## Instructions in README

[as we saw previously] The README is a great place to show the full story of how your app is used (from a user's perspective), e.g.

TODO - include how to run it, include a screenshot etc.

## Inconsistent folder layout (Sinatra structure)

Sinatra is not a particularly opinionated framework (unlike Rails).  This means it does not mandate folder structures and naming conventions.  This gives developers the freedom to choose their own structures according to the needs of a project.

Structure is an important decision in your design as it affects readability.  One of the most important considerations is the *separation of concerns*

Here is a checklist to consider:
If the structure has an `/app` folder:
* Is the server file (e.g server.rb or app.rb) at the top level of the `/app` folder?
* Is the `/views` folder in `/app`?
* Is the `/lib` folder in the project root folder?

If the structure does not have an `/app` folder:
* Is the server file (e.g server.rb or app.rb) in the project root folder?

## Inconsistent file naming

Ruby class files should be named with the snake_case version of the class name.  Class names should be PascalCase.  Hence:
### Good

- `class Rps` -> `rps.rb`
- `class RpsWeb` -> `rps_web.rb`

### Bad

- `class RPS_web` -> `rps_web.rb`
- `class RpsWeb` -> `rps.rb`

Note, naming conventions tend to prefer acronyms to be 'wordified' i.e.  `RPS` becomes `Rps` or `rps` as appropriate.

## Not initializing capybara correctly
In `spec/spec_helper.rb`, don't forget to add `Capybara.app = MyRackApp` or similar. You can use generators such as `rspec-sinatra init myApp lib/myapp.rb` but beware that the spec_helper will be overwritten, so you may want to save all the CI first.

## Overwriting spec_helper
When using generators such as `rspec-sinatra` beware that spec_helper.rb will be rewritten. Make sure you make a copy of all the pre-written CI code, otherwise you will break your coveralls CI, causing silent failure of your pull request.

## Not removing comments before committing
Old code should be deleted before you commit - it is distracting and makes your code hard to read. There is no reason to keep commented-out code - if you are commiting regularly, all your code will be in git so you can easily look back at how it looked before you made changes.


# Step 2: Tests and \*\_spec.rb files  

## \*\_spec.rb files (unit tests)

### Not testing all of the game logic in unit tests
As there is a discrete number of possible outcomes, your tests should test them all.  This may seem like overkill, but how else will you know that your game logic is correct in all circumstances?


## \*\_spec.rb files (feature tests)

### Testing game logic in feature tests
Your feature test should not need to test all of the rock/paper/scissors(/lizard/spock) possibilities - this is the responsibility of your unit tests.

### Not testing all game outcomes in feature tests
Although you do not need to test all possible combinations, your feature tests should test every possible outcome - i.e.:

- a win
- a loss
- and a draw.

to ensure the user interface logic is correct.

### Feature tests can have more than one expect statement per it block (i)

* feature tests can have more than one expect statement per it block

### Stub out random behaviour (i)

* stub out random behaviour to ensure your feature tests pass consistently, e.g. (i)

```ruby
feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in('name', with: 'Philip')
    select('rock', from: 'your_choice')
    click_button('Play')
    expect(page).to have_content "The result is .... You won"
  end
end
```

### Feature tests with multiple users (i)

* to get feature tests working for multiple users you need to work with Capybara sessions, see: http://blog.bruzilla.com/2012/04/10/using-multiple-capybara-sessions-in-rspec-request.html  TODO - say google this?

# Step 3: Application code and \*.rb files

### Including presentation strings in business logic layer

Your `Game` class (or similar) should not return presentation strings like `"Congratulations - you won!"`.  This is a presentation concern and should be handled in another layer of code (**separation of concerns**).  Instead, return representative codes, such as `:win` and `:draw` from the `Game` class which can be translated by the presentation layer.

This approach makes it possible to change the presentation layer (e.g. to add support for a different language) without changing the lower-level code (**open/closed principle**).

**bad**

```ruby
class Game
  def result
    'Congratulations - you won!'
  end
end

class RPSWeb < Sinatra::Application
  get '/result' do
    @game = Game.new
    erb :result
  end
end
```

```html
<h1><%= @game.result%></h1>
```

**good**

```ruby
class Game
  def result
    :win
  end
end

class RPSWeb < Sinatra::Application
  get '/result' do
    @game = Game.new
    erb :result
  end
end
```

```html
<h1>
<% if @game.result == :win %>
  Congratulations - you won
<% else %>
  Sorry - you lost
<% end %>
</h1>
```

### Use of `if/elsif` conditionals for business logic

Long `if` and `elsif` trees are very difficult to read and nested `if` statements require too much working memory for a reader to quickly scan.

There are a number of approaches to the game logic of Rock Paper Scissors,  e.g.:

- Use a hash to map the rules:
```
RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }
```
or for RPSLS:
```
RULES = { rock: [scissors, lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }
```
- Use individual classes for each weapon (i.e. `Rock`, `Paper` etc.) with a `beats?` or similar method that takes another weapon as a parameter.

```ruby
class RPS
  def wins?(strategy1, strategy2)
    RULES[strategy1][strategy2]
  end
end

$ rps = RPS.new
$ rps.wins(:rock, :scissors)
```

NOTE: makes me want to write something like:

```ruby
class Scissors
end

class Rock
  def self.beats?(strategy)
    strategy == Scissors
  end
end

$ Rock.beats? Scissors
=> true

```

### Not encapsulating the 'computer' in a separate class

By creating a `Computer` class, you can take advantage of duck-typing in the game class.  The game does not need to know if it's comparing two players or one player vs a computer or even two computers!

```ruby
class Computer
  def strategy
    [:rock, :paper, :scissors].sample
  end
end

class Player
  attr_reader :strategy

  def strategy=(strategy)
    fail 'not a possible strategy' unless [:rock, :paper, :scissors].includes? strategy
    @strategy = strategy
  end
end
```

### Use of global variables

It is tempting to use global variables to ensure instances of a game or players are persisted across calls to the server.  But *global variables are evil*.  There are a number of other ways to achieve the same thing.  While some may argue these also introduce 'globally accessible' state, the critical difference is we have more control over this state and it is properly **namespaced**.  Here is an example using a class methods inside the server and Sinatra helper methods to encapsulate the interface:

```ruby
class RpsWeb < Sinatra::Application
  enable :sessions

  class << self
    def player(id)
      players[id]
    end

    def add_player(id, player)
      players[id] = player
    end

    private

    def players
      @players ||= {}
    end
  end

  helpers do
    def current_player
      RpsWeb.player(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      RpsWeb.add_player(id, player)
      session[:player_id] = id
    end
  end

  get '/' do
    "Hello #{current_player.name}" if current_player
  end

  post '/player' do
    player = Player.new(params[:name])
    add_player(player)
    redirect_to '/'
  end
end
```

## Not storing the weapons in a constant

If you have something like this:
```ruby
def weapons
  ['Rock', 'Paper', 'Scissors']
end
```
Then *four* new objects will be created *every time you call `weapons`*  (what are the four objects?).  Use a constant with symbols instead:
```ruby
WEAPONS = [:rock, :paper, :scissors]
```

### Inconsistent routing and route naming

Routes should not have dual purposes.  Each discrete action of your programme should have its own dedicated route (N.B. the route comprises both the verb and the path).

The preferred convention for naming routes is snake_case, e.g. `new_game` over `NewGame`.


### POSTing to `/result`

Sending a `POST` to `/result` implies that you are _setting_ the result rather than submitting a go.  `/play` would be better.

### Defining weapons in more than one place

Don't Repeat Yourself (DRY)!  The list of available weapons should be defined in only one place.  It can be passed around or referenced or injected, but not duplicated!


### Calling business logic from the view

It is the controller's responsibility to pass the player's weapon to the game and get the result.  Use instance variables or helper methods to represent or convert this result for rendering in the view.

### Fat controllers

Game logic should be executed in your lib files. You should minimise the amount of logic in the controller by extracting it to the lib files. This helps to ensure your code is testable, maintainable and reusable.
