require_relative 'player'

class Game 
  attr_reader :player
  
  def initialize(player)
    @player = player
    @rps_array = ["rock", "paper", "scissors"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def generate_computer_choice
    @choice = @rps_array.sample
  end

  def player_picks_rock
    @players_choice = "rock"
  end

  def player_picks_paper
    @players_choice = "paper" 
  end

  def player_picks_scissors
    @players_choice = "scissors"
  end
end 