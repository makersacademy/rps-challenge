require 'forwardable'

class Game
  extend Forwardable
  def_delegator :current_turn, :name, :current_turn_name

  attr_reader :players, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def first_player_name
    players.first.name
  end

  def second_player_name
    players.last.name
  end

  def switch
    @current_turn = players.detect { |player| player != current_turn }
  end
end
