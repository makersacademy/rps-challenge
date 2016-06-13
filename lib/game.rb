require_relative 'computer'
require_relative 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player_name, :player_choice, :computer_choice

  def initialize(player,computer_choice=Computer.new.choice)
    @player_name = player.name
    @player_choice = player.choice
    @computer_choice = computer_choice
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def result
    return :tie if tie?
    won? ? :won : :lost
  end

  # def winning_move
  #   return "#{@player_choice} was played against #{@computer_choice}" if tie?
  #   won? ? "#{@player_choice} > #{@comp_choice}!" : "#{@comp_choice} > #{@player_choice}!"
  # end

  private

  def tie?
    @player_choice == @computer_choice
  end

  def won?
    return true if @player_choice == "Rock" && @computer_choice == "Scissors"
    return true if @player_choice == "Paper" && @computer_choice== "Rock"
    return true if @player_choice == "Scissors" && @computer_choice == "Paper"
  end

end
