# RPS Challenge

## The Challenge
For the Web week challenge I need to create a web based game of Rock Paper Scissors, looking ahead at some of the user stories
its clear the game should be built with expandability in mind, bonus levels 1 and 2 add additional complexity that would be 
break the game when added.

On a previous challenge of rock paper scissors, for the console based game (Which I will rely on for this challenge) I created 
the game with the win conditions hard coded in to the game, meaning it would be a lot of work to expand it.

This time around, I will create the game with this expandability in mind.


### Setup

Setting up the testing infrastructure and confirming everything works, this was achieved by adding the following to the spec_helper.rb file
```ruby
  ENV['RACK_ENV'] = 'test'

  require File.join(File.dirname(__FILE__), '..', 'app.rb')
  require 'capybara'
  require 'capybara/rspec'
  require 'rspec'

  Capybara.app = RPSO
```
RPSO refers to the name of the application: RPSO (Rock Paper Scissors Other) with the other referring to any bonus additions we make
to the game

The config.ru file contains the following

```ruby
require_relative './app'

run RPSO
```

This tells rackup where the application is and to run it

In the app.rb file I have setup the initial root route for testing, that returns a string "Hello World"

```ruby
require 'sinatra/base'

class RPSO < Sinatra::Base

  get '/' do
    "Hello World"
  end


  run! if app_file == $0
end
```

You will also notice before the closing end a run command, this will allow us to run the application by calling

```ruby
ruby app.rb
```

rather then using rackup or shotgun to run the application.

The initial test to ensure everything is up and running

```ruby
feature 'Visits root of site' do
  scenario 'returns content' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end
```

when running rspec we have a passing test and are able to move on to the first user story.

```zsh
➜  rps-challenge git:(master) ✗ rspec

Visits root of site
  returns content

Have you considered running rubocop? It will help you improve your code!
Try it now! Just run: rubocop

Finished in 0.0258 seconds (files took 0.36924 seconds to load)
1 example, 0 failures


COVERAGE: 100.00% -- 9/9 lines in 2 files

➜  rps-challenge git:(master) ✗
```

With the infrastructure tested and working its time to start building the website.

### User story 1

```ruby
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

This will require us to render a page with a form where a user is able to submit their desired name, we can also
infer from this that the user would want some sort of confirmation that their data was correctly submitted. That will require
us to create a post route where the data can be submitted and stored for the duration of the game and then return the player
back to a screen that contains their name as confirmation it was stored and accessible.

The first test I created will visit the home page, expect a field where the player can enter their name and will then
click on a button called "Submit", it will then expect to find the relevant content on the page as shown below.

```ruby
feature 'Enter Player name' do
  scenario 'Submit a name' do
    visit('/')
    fill_in :player_1_name, with: "Kittens"
    click_button 'Submit'
    expect(page).to have_content 'It\s Kittens Vs Computer'
  end
end
```

When running rspec, we get the following error

```ruby
ailures:

  1) Enter Player name Submit a name
     Failure/Error: fill_in :player_1_name, with: "Kittens"

     Capybara::ElementNotFound:
       Unable to find field :player_1_name that is not disabled
```

Now its time to write up some code. I came up with the following solution to this that allows the test to pass. We are going
to need to create an html page in the views folder, add a form for the user to enter their name, A button to submit the form
and some sort of confirmation that it completed successfully.

In the terminal I ran the following commands (In the root of the project directory)

```bash
mkdir views
touch views/index.erb
mkdir -p public/css (Note this is for later use)
```

in index.erb, I added HTML boilerplate, and within the body tag created a basic layout with a form to submit.

The user is then redirected to another page where they can see their names in lights (note, the lights will come later when we add 
some CSS and styling)

I have also removed the infrastructure tests as we are no longer returning a string, but HTML with content making that test redundant.

To keep my routes clear as to their purpose, any post routes will be prefixed with /api/some_route_here, an example of this is the
submit names route, which will have an address of /api/submit_names, any other post routes in the application will follow this convention

in app.rb I change the root '/' path to the following

```ruby 
  get '/' do
    erb :index
  end
```
