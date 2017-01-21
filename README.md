# Rock, Paper, Scissors Challenge
### [Makers Academy] (http://www.makersacademy.com) - Week 3 Solo Weekend Project

## Index
* [Gems Used] (#GEMS)
* [Installtion] (#Install)
* [User Stories] (#US)
* [Usage] (#Usage)
* [Screen Shots] (#Shots)

## <a name="GEMS">Gems Used</a>
```ruby
gem 'sinatra'
gem 'rake'
gem 'rspec'
gem 'rubocop-rspec'
gem 'rspec-sinatra'
gem 'rubocop'
gem 'coveralls', require: false
gem 'capybara'
gem 'selenium-webdriver'
gem 'byebug'
```

## <a name="Install">Installation</a>
The RSP Challenge is ran on Ruby version : 2.2.3

* To change Ruby versions
```shell
$ rvm 2.2.3
```
* To install Ruby 2.2.3
```shell
$ rvm install ruby-2.2.3
```
* To install Gems
```shell
$ gem install bundle
$ bundle
```

## <a name="US">User Stories</a>
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## <a name="Usage">Usage</a>
To load Sinatra web server
```shell
$ ruby app.rb
```
type `http://localhost:4567` into your web browser

## <a name="Shots">Screen Shots</a>

### Enter Name Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot2.png)](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot2.png "Screen Shot 2")

### Main Game Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot3.png)](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot3.png "Screen Shot 3")

### Winning Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot4.png)](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot4.png "Screen Shot 4")
