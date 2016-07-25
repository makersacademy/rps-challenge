require_relative 'player'

class Game

  attr_reader :player_1, :computer_selection
  attr_accessor :winner

  def self.game(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
    @winner = nil
  end

  def find_winner
    find_computer_choice
    if @player_1.selection == @computer_selection
      @winner = "Draw"
    elsif (@player_1.selection== 'rock' && @computer_selection == 'scissors') || (@player_1.selection == 'paper' && @computer_selection== 'rock') || (@player_1.selection == 'scissors' && @computer_selection == 'paper')
      @winner = @player_1.name
    else
      @winner = "Computer"
    end
  end

  def find_computer_choice
    options = ['paper','scissors','rock']
    @computer_selection = options[Kernel.rand(3)]
  end

end
