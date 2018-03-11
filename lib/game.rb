require_relative 'computer.rb'

class Game

  attr_reader :beatmap, :ai_choice

  def initialize
    computer = Computer.new
    @ai_choice = computer.selection
    @beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  end

  def draw?(player1_input)
    player1_input == ai_choice
  end

  def win?(player1_input)
    beatmap[player1_input] == ai_choice
  end
end
