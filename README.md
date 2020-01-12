# RPS Challenge

## The Challenge
For the Web week challenge I need to create a web based game of Rock Paper Scissors, looking ahead at some of the user stories
its clear the game should be built with expandability in mind, bonus levels 1 and 2 add additional complexity that would be 
break the game when added.

On a previous challenge of rock paper scissors, for the console based game (Which I will rely on for this challenge) I created 
the game with the win conditions hard coded in to the game, meaning it would be a lot of work to expand it.

This time around, I will create the game with this expandability in mind.


### Step 1

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