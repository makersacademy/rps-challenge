# RPS Challenge

## Introduction

I undertook this project in order to help me develop my understanding of Sinatra and Capybara.

This program is a simple version of rock, paper, scissors. Users can select an option and play against either a computer opponent or another user. Here are the user stories provided beforehand:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Approach

In order to solve this, I followed the following steps:

1. **Domain modelling** where objects and messages were identified, and the structure of this program was initially mapped out.
2. **Feature tests** in Capybara, where the expected functionality was specified.
3. **Unit tests** using RSpec, where specific expectations around this program's functionalty were specified.
4. **Refactoring** where code was improved after the user stories were met.

## How to run this program
### Installing this program

- Fork and clone this project onto your machine.
- Ensure all of the gems in the Gemfile are installed on your machine.
- Launch rackup (I use the default address of 9292)

## Running this program
- Visit the site at http://localhost:9292/
- Play the game:

![Rock Paper Scissors](/RockScissorsPaper.png?raw=true "Rock Paper Scissors")
