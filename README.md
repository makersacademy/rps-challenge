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


1. There is a class called War which has a method called decide_winner which takes two arguments
2. When War calls decide_winner on 1 and 2 it returns 2 as the winner
3. There is a class called Weapon, which has a method called weapon_to_number, which takes 1 argument
4. weapon_to_number converts ":rock" => 1
5. decide_winner can now work with symbols rather than just numbers

1a.
war = War.new
war.decide_winner(1,2)

1b.
require "war"

describe War do
  it "can decide a winner" do
    expect(subject).to respond_to(:decide_winner).with(2).arguments
  end
end

1c.
class War
  def decide_winner(player_1, player_2)
  end
end

1d.
1 pass

1e.
fine

2a.
war = War.new
war.decide_winner(1,2)

2b.
it "chooses 2 as a winner over 1" do
  expect(subject.decide_winner(1,2)).to eq 2
end

2c.
def decide_winner(player_1, player_2)
  difference = player_1 - player_2
  modulo = difference % 3
  if modulo == 0
    :draw
  elsif modulo % 2 == 0
    :player_2_win
  else
    :player_1_win
  end
end

2d. pass

2e. fine

3a.
weapon = Weapon.new
weapon.weapon_to_number(:rock)

3b.
describe Weapon do
  it "converts weapons to numbers" do
    expect(subject).to respond_to(:weapon_to_number).with(1).argument
  end
end

3c.
class Weapon
  def weapon_to_number(weapon)
  end
end

3d. pass
3e. fine

4a.
weapon = Weapon.new
weapon.weapon_to_number(:rock)

4b.
it "converts :rock to 1" do
  expect(subject.weapon_to_number(:rock)).to eq 1
end

4c.
class Weapon

  def initialize
    @weapon_values = {
      :rock => 1,
      :paper => 2,
      :scissors => 3,
      :spock => 4,
      :lizard => 5
      }
  end

  def weapon_to_number(weapon)
    @weapon_values[weapon]
  end
end

4d. pass
4e. fine


5. decide_winner can now work with symbols rather than just numbers
5a.
war = War.new
war.decide_winner(:rock, :paper)

5b.
