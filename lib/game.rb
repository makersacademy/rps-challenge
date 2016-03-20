require_relative 'constants'
require_relative 'human'
require_relative 'ai'

class Game

  include Constants

  attr_reader :player1, :player2

  def self.create(player1_name:, player2_name:nil, player_class:Human, ai_class:Ai)
    player1 = player_class.new(name:player1_name)
    if player2_name.nil?
      player2 = ai_class.new
      p "creating player 2 as ai"
    else
      player2 = player_class.new(name:player2_name)
    end
    @instance = self.new(player1:player1, player2:player2)
  end

  def self.instance
    @instance
  end

  def self.reset
    @instance = nil
  end if

  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
    @players = [player1,player2]
    @in_progress = false
  end

  def in_progress?
    @in_progress
  end

  def in_progress!
    @in_progress = true
  end if

  def restart!
    @in_progress = false
    @player1.restart!
    @player2.restart!
  end

  def find_opponent_of(player_name)
    @players.select{|player| return player if player.name != player_name}
  end

  def winner(player1:@player1,player2:@player2)
    player1.win! if MOVES[player1.move].include?(player2.move)
    player1.not_win! if !MOVES[player1.move].include?(player2.move)
    player2.win! if MOVES[player2.move].include?(player1.move)
    player2.not_win! if !MOVES[player2.move].include?(player1.move)
  end
end
