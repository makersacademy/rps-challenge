# Rock, Paper, Scissors Challenge
#### Technologies: Ruby, Rspec, Sinatra, Heroku
### [Makers Academy] (http://www.makersacademy.com) - Week 3 Solo Weekend Project [![Coveralls](https://camo.githubusercontent.com/c85bd9ed833f4beabdb09a95a6cc1de03fe2324a/68747470733a2f2f636f766572616c6c732e696f2f6275696c64732f393536363138302f6261646765)](https://github.com/adrianeyre/rps-challenge)

## Index
* [Gems Used] (#GEMS)
* [Installtion] (#Install)
* [User Stories] (#US)
* [Usage] (#Usage)
* [Screen Shots] (#Shots)
* [Play live on Heroku] (#Heroku)

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
The RSP Challenge is ran on Ruby version : 2.3.3

* To clone and change Ruby versions
```shell
$ git clone https://github.com/adrianeyre/rps-challenge
$ cd rps-challenge
$ rvm 2.3.3
```
* To install Ruby 2.3.3
```shell
$ rvm install ruby-2.3.3
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

## <a name="Heroku">Play live on Heroku</a>

[Rock, Paper, Scissors] (https://adrianeyre-rps.herokuapp.com)

## <a name="Shots">Screen Shots</a>

### Enter Name Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot2.png)](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot2.png "Screen Shot 2")

### Main Game Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot3.png)](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot3.png "Screen Shot 3")

### Winning Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot4.png)](https://raw.githubusercontent.com/adrianeyre/rps-challenge/master/images/screenshot4.png "Screen Shot 4")
