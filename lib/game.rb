require_relative './player'

class Game
  attr_reader :player, :selection, :computer_choice
  CHOICES = ["Rock", "Paper", "Scissors"]

  def initialize(player)
    @player = player
    @selection
  end

  def self.instance
    @game
  end

  def self.new_game(name)
    player = Player.new(name)
    @game = Game.new(player)
  end

  def update_selection(selection)
    @selection = selection
  end

  def computer
    @computer_choice = CHOICES.sample
  end

  def evaluate_game
    return :draw if @computer_choice == @selection
    return check_win? ? :win : :lose
  end

  private

  def check_win?
    return true if 
    @selection == "Paper" && @computer_choice == "Rock" ||
    @selection == "Scissors" && @computer_choice == "Paper" ||
    @selection == "Rock" && @computer_choice == "Scissors"
    false
  end
end