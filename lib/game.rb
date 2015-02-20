class Game

  attr_accessor :player, :name
  attr_reader :computer_choice, :winner

  def initialize
    @player = nil
    @name = name
    @computer_choice = nil
    @winner = nil
  end

  RULES = {
    "rock" => ["scissors"],
    "scissors" => ["paper"],
    "paper" => ["rock"]
  }

  def choose_randomly
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def result
    choose_randomly
    @winner = 'Draw' if @player.choice == @computer_choice
    @winner = @player.name if RULES[@player.choice].include? @computer_choice
    @winner = 'Computer' if RULES[@computer_choice].include? @player.choice
  end

end