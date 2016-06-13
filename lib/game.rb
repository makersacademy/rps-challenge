require_relative 'referee'
require_relative 'log'

class Game

  attr_reader :player1, :turns, :game_log
  attr_accessor :player2, :p1_move, :p2_move

  class << self
    attr_reader :game
  end

  def initialize(player1, player2="computer",
                 game_log = Log.new, referee = Referee.new)
    @player1 = player1
    @player2 = player2
    @game_log = game_log
    @referee = referee
    @turns = 0
    @p1_move = nil
    @p2_move = nil
  end

  def self.create(name)
    @game = [] if @game.nil?
    @game << new(name)
  end

  def self.create_multi(name)
    @game = [] if @game.nil?
    @game << new(name, :opponent)
  end

  def self.player_waiting?
    game.each { |game| return true if game.player2 == :opponent } if !game.nil?
    false
  end

  def self.join_game
    game.reverse_each { |x| return game.index(x) if x.player2 == :opponent}
  end

  def fight(p1_move, p2_move = :ai_move)
    log(result(p1_move.to_sym, p2_move.to_sym))
    @turns += 1
    multi_reset
  end

  def last_result
    game_log.last_result
  end

  def score
    game_log.score
  end

  private

  attr_reader :referee

  def result(p1_move, p2_move)
    referee.result(p1_move, p2_move)
  end

  def log(outcome)
    game_log.store(outcome)
  end

  def multi_reset
    @p1_move = nil
    @p2_move = nil
  end

end
