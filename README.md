### Rock Paper Scissors challenge

**Task**  
Build Rock Paper Scissors game with the rules below:
```
Rock beats Scissors
Scissors beats Paper
Paper beats Rock
```

[Rock-Scissors-Paper on Heroku](https://rockpaperscissorgame.herokuapp.com/)


**Setup**
```
$ git clone https://github.com/BasileKoko/rps-challenge
$ cd rps-challenge
```

**To run program**
```
$ ruby app/app.rb
$ open localhost:4567
```

**To run tests**
```
$ rspec
```

**User stories**
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
**Gem used for this project**

```ruby
gem 'sinatra'
gem 'rake'
gem 'shotgun'
gem 'rspec-sinatra'
gem 'selenium-webdriver'
gem 'rspec'
gem 'rubocop-rspec'
gem 'rubocop'
gem 'coveralls'
gem 'capybara'
gem 'byebug'
```
