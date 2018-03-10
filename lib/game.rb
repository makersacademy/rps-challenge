require 'computer'

class Game

  attr_reader :beatmap

  def intialize
    @beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  def random_choice_generator
    computer = Computer.new
    computer.selection
  end

  def finish?
    player1_input != random_choice_generator
  end

  def win?
    beatmap[player1_input] == random_choice_generator
    #if true player 1 wins
  end
end
