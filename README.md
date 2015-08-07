```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard


1. There is a class called War which has a method called choose_weapon which takes one argument
2. When War chooses a weapon, 



1a.
war = War.new

1b.
require "war"

describe War do
  it "can choose a weapon" do
    expect(subject).to respond_to(:choose_weapon).with(1).argument
  end
end

1c.
class War

  def choose_weapon(weapon)
  end
end

1d.
1 pass

1e.
fine



war.choose_weapon(:rock)
