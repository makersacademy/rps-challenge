require_relative 'player'

class Game
  attr_reader :winner, :computer_choice, :player, :player_2, :options

  DEFAULT_OPTIONS = ['rock', 'paper', 'scissors']

  PAIRS = {
    'rock': {loseTo: 'paper', winTo: 'scissors'},
    'paper': {loseTo: 'scissors', winTo: 'rock'},
    'scissors': {loseTo: 'rock', winTo: 'paper'}
  }

  def initialize(player, player_2 = nil)
    @player = player
    @player_2 = player_2
    @options = DEFAULT_OPTIONS
    @pairs = PAIRS
  end
  
  def generate_random
   @computer_choice = @options.sample
  end

  def winner
    if @player.choice == @computer_choice
      "Tie!"
    elsif @pairs[@player.choice.to_sym][:winTo] == @computer_choice
      "Yay! You win!"
    elsif @pairs[@player.choice.to_sym][:loseTo] == @computer_choice
      "Boo! You lost!"
    end
  end

  def compare
    if @player.choice == @player_2.choice
      "Tie!"
    elsif @pairs[@player.choice.to_sym][:winTo] == @player_2.choice
      "#{@player.name} wins!"
    elsif @pairs[@player.choice.to_sym][:loseTo] == @player_2.choice
      "#{@player_2.name} wins!"
    end
  end
end