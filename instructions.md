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

  9) In the browser, use the port number to enter the url:

    `localhost:9292`

10) In app.rb make first get request:
```
    get '/' do
      'Rock, Paper, Scissors`
    end
```

