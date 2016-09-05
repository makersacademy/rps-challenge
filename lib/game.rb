require_relative "player"

class Game

  attr_accessor :player_choice
  attr_reader :computer_choice, :rock, :paper, :scissors, :player

  def initialize(player)
    @player = player
    @player_choice = nil
    @computer_choice = nil
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computer_choice
    @computer_choice = [:rock, :paper, :scissors].sample
  end

  def compare
    if @player_choice == "rock" && @computer_choice == :scissors
      "#{@player.name} wins!"
    elsif @player_choice == "paper" && @computer_choice == :rock
      "#{@player.name} wins!"
    elsif @player_choice == "scissors" && @computer_choice == :paper
      "#{@player.name} wins!"
    elsif @player_choice == @computer_choice.to_s
      "Its a draw!"
    else
      "computer wins!"
    end
  end

end
