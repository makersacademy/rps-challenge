require_relative 'player'

class Game

  attr_reader :player_1, :player_2
  WINS = {"Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock"}

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2 
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    return "It's a tie" if tie?   
    return @player_2 if WINS[@player_2.move] == @player_1.move
    return @player_1
  end
  
  private 

  def tie?
    @player_2.move == @player_1.move
  end

end