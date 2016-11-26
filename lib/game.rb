require_relative 'player.rb'

class Game

  attr_reader :move_p1, :move_p2

  def initialize(player1, player2=Player.new)
    @player1, @player2 = player1, player2
  end

  def self.create(player1, player2=Player.new)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def player1_name
    player1.name
  end

  def player2_name
    player2.name
  end

  def get_move_p1 move
    @move_p1 = player1.make_move move
  end

  def get_move_p2
    @move_p2 = player2.make_move
  end

  def draw?
    move_p2 == move_p1
  end

  def winner
    fail NoWinError, "There was a draw" if draw?
    return player1_name if player1_win?
    player2_name
  end

  def loser
    fail NoWinError, "There was a draw" if draw?
    return player1_name unless player1_win?
    player2_name
  end

  def player1_win?
    WIN_HASH[move_p1].include? move_p2
  end

  private

  attr_reader :player1, :player2

  WIN_HASH = {rock: [:scissors, :lizard],
              paper: [:rock, :Spock],
              scissors: [:paper, :lizard],
              lizard: [:Spock, :paper],
              Spock: [:rock, :scissors]}
end

class NoWinError < StandardError; end
