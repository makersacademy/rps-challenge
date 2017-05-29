require_relative 'player'

class Game

  attr_reader :player, :choice, :game, :computer_choice, :potential_choices

  def initialize(player = Player.new)
    @player = player
    @choice = []
    @computer_choice = []
    @potential_choices = ["Rock", "Paper", "Scissors"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def pick_opposing_weapon
    @computer_choice << @potential_choices.sample
  end

  def reset_game
    @computer_choice.clear
    @choice.clear
  end

  def draw?
    return true if @choice == @computer_choice
      else
    return false
  end

  def win?
    combination = []
    combination << @choice
    combination << @computer_choice
    combination.flatten!
    return true if combination == ["Scissors", "Paper"] || ["Rock", "Scissors"] || ["Paper", "Rock"]
  end

  def lose?
    combination = []
    combination << @choice
    combination << @computer_choice
    combination.flatten!
    return true if combination == ["Scissors", "Rock"] || ["Rock", "Paper"] || ["Paper", "Scissors"]
  end

end
