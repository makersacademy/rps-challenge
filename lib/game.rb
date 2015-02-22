require_relative 'player'

class Game

  attr_accessor :name, :player, :computer_choice, :winner

  def initialize
    @name = name
    @player = nil
    @computer_choice = nil
    @winner = nil
  end

  RULES = {"rock" => ["scissors"], "scissors" => ["paper"], "paper" => ["rock"]}

  def choose_randomly
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def result
    choose_randomly
    @winner = "tie" if @player.choice == @computer_choice
    @winner = @player.name if RULES[@player.choice].include? @computer_choice
    @winner = "The computer" if RULES[@computer_choice].include? @player.choice
  end

end