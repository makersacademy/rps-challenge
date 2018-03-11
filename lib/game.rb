require_relative 'computer.rb'

class Game

  attr_reader :beatmap, :ai_choice

  def initialize
    computer = Computer.new
    @ai_choice = computer.selection
    @beatmap = {
      'scissors' => ['paper', 'lizard'],
      'paper' => ['rock', 'spock'],
      'rock' => ['scissors', 'lizard'],
      'spock' => ['scissors', 'rock'],
      'lizard' => ['paper', 'spock']
    }
  end

  def draw?(player1_input)
    player1_input == ai_choice
  end

  def win?(player1_input)
    beatmap[player1_input].include?(ai_choice)
  end
end
