require_relative 'player'
require_relative 'computer'
class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def play(p1_choice, p2_choice)
    winmap = { "Scissors" => "Paper", "Paper" => "Rock", "Rock" => "Scissors" }
      if p1_choice == p2_choice
        :draw
      elsif winmap[p1_choice] == p2_choice
        :player_1_win
      else
        :player_2_win
      end
  end
end
