require_relative 'referee'
require_relative 'log'

class Game

  attr_reader :player1, :player2, :turns, :game_log

  def initialize(name, game_log = Log.new, referee = Referee.new)
    @player1 = name
    @player2 = "computer"
    @game_log = game_log
    @referee = referee
    @turns = 0
  end

  def self.game
    @game
  end

  def self.create(name)
    @game = new(name)
  end

  def fight(move)
    log(result(move))
    @turns += 1
  end

  def result(move)
    @referee.result(move)
  end

  def log(outcome)
    game_log.store(outcome)
  end

  def last_result
    game_log.last_result
  end

  def score
    game_log.score
  end
end
