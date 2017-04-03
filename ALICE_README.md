## CHALLENGE SUMMARY


## HOW TO PLAY THE GAME


___
## APPROACH - How I went about tackling this week's challenge
### Set-up (tech)
- file structure
- development environment
- resources

### Planning
- Principle
- Model View Controller (MVC)
  - Diagramming the functions and files

___
### SET-UP
### File Structure
RPS-Challenge

|-_Gemfile

|-_app.rb

|-_config.ru

|-_spec

  |-spec_helper.rb

  |-\__features

    |-web_helpers.rb

|-_views

|-_lib

## Development Environment
Run Makers init in project directory
- `makersinit`

Added Selenium gem to Gemfile
- Gemfile -> `gem 'selenium-webdriver'`

Run bundle
- `bundle install`

Update bundle
- `bundle update`

Update spec_helper
~~~
require 'rspec'
require 'features/web_helpers'
require File.join(File.dirname(__FILE__), '..', 'app.rb')

ENV['RACK_ENV'] = 'test'

Capybara.app = RPS
~~~

Pry set-up
~~~~
require "capybara/dsl"
require "selenium-webdriver"
include Capybara::DSL
Capybara.default_driver = :selenium
rackup -p 9292
~~~~

## Resources
Markdown cheatsheet
<https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links>

WK3 Makers - Battle challenge
- [Trump vs. Truth] (https://github.com/Alicespyglass/Battle)
- [Volkswagen vs. Polar Bear] (https://github.com/Alicespyglass/Battle-Friday)

___

### PLANNING
### Principle
**1) Make it work**

**2) Make it pretty**

### Model View Controller
## Model
Lib (.rb)

**Game**
Responsible for knowing which player won

**Player**
Responsible for knowing holding player information
- name
- choice (Rock, Paper, Scissors)

**Computer_choice**
Responsible for randomly generating choice (Rock, Paper, Scissors)
