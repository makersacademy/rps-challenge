# Instructions

## Initial Set-up

1) Check `gemfile`, check for:
    - `capybara`
    - `sinatra`
    - `rspec`

2) Run `bundle` to install gems

3) Create a new file called `app.rb` in the root of the project ready to set up an application called `Game`

3) In `app.rb`, `require 'sinatra/base'`

4) Create a `class` called `Game` and add `Sinatra::Base` to it:

    `class Game < Sinatra::Base`

5) At the bottom of the `class`, before the `end` statement add a line that will start the server if the ruby file is executed directly:

    `run! if app_file == $0`

6) In the root of the project, create a `config.ru` file - this will be used to run the app

7) Inside the `config.ru`, do:
  ```
    require_relative "./app"
    run Game
  ```

8) Run `rspec` and check that there are `0 examples` and `0 failures`

9) Run `rackup` to see the port number

10) In the browser, use the port number to enter the url:

    localhost:9292

11) In app.rb make first get request to add the title of the game to the homepage:
```
    get '/' do
      'Rock, Paper, Scissors`
    end
```

## Setting Up Tests

12) Set up spec_helper with what it needs to prepare Capybara and to get Capybara to test the app, starting with chaning the rack environment to test:

    ENV['RACK_ENV'] = 'test'

13) In spec_helper, require the sinatra app file:

    require File.join(File.dirname(__FILE__), '..', 'app.rb')

14) In spec_helper, tell Capybara about the app class:

    Capybara.app = Game

15) Inside the spec directory, create a new directory called features. This is to store feature tests.

16) Inside the features directory, add a new file for the first feature test to check if the testings set up works:

    touch spec/features/testing_spec.rb

17) Inside this file, write a simple test to check that the homepage can be visited and to check that it has some content:
```
    feature 'Testing setup' do
      scenario 'Run app and check homepage has content' do
        visit('/')
        expect(page).to have_content 'Rock, Paper, Scissors'
      end
    end
```

18) Run `rspec` and check there are `1 example, 0 failures`


## Building The Game