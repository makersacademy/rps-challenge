require_relative 'winning_logic'

class Game

  attr_reader :player_1, :player_2, :round

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @round = 0
  end

  def self.create(player_1, player_2 = Player.new("Computer"))
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def calculate_winner
    player_2.make_random_move if player_2.name == "Computer"
    WinningLogic.new.winner(player_1, player_2)
    @round += 1
  end
end
