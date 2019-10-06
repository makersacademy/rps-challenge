# frozen_string_literal: true

class Game
  attr_reader :player1, :player2_move, :player2, :player1_move

  WIN = {
    'Rock' => 'Paper',
    'Paper' => 'Scissors',
    'Scissors' => 'Rock'
  }.freeze

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def single_player(move)
    @player1_move = player1.choose_move(move)
    @player2_move = player2.random_move
  end

  def p1_move(move)
    @player1_move = player1.choose_move(move)
  end

  def p2_move(move)
    @player2_move = player2.choose_move(move)
  end

  def draw?
    @player1_move == @player2_move
  end

  def outcome
    return "its a tie, both players played #{player1_move}" if draw?
    return "#{player1.name} won" if player1_move == WIN[player2_move]

    "#{player2.name} won"
  end

  def reset
    @player1_move = nil
    @player2_move = nil
  end
end
