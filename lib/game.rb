require_relative 'turn'
require 'forwardable'

class Game

  extend Forwardable

  attr_reader :player1, :player2, :turn
  def_delegator :turn, :weapon1, :player1_weapon
  def_delegator :turn, :weapon2, :player2_weapon

  def initialize(player1, player2 = Player.new('Computer'), turn = Turn)
    @player1 = player1
    @player2 = player2
    @turn_klass = turn
  end

  def turn_message
    @turn == nil ? 'Welcome!' : @turn.message
  end

  def play_turn(weapon1, weapon2 = nil)
    @turn = @turn_klass.new(weapon1, weapon2)
    score_up(@turn.winner)
  end

  def win_message
    if @player1.winner?
      "Congratulations! You won against "+@player2.name.to_s
    elsif @player2.winner?
      "Oh no! You lost against "+@player2.name.to_s
    end
  end

  private

  def score_up(turn_winner)
    @player1.score_up if turn_winner == :player1
    @player2.score_up if turn_winner == :player2
  end

end
