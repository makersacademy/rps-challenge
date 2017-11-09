require_relative 'engine'

class Game
  attr_reader :player_1, :log

  def initialize(player_1_name)
    @player_1 = player_1_name
    @engine = Engine.new
    @log = []
  end

  def play(choice)
    @log.push(@engine.new_play(choice))
  end

  def print_log
    return "#{wins} wins, #{losses} losses, and #{draws} draws"
  end

  def self.new_game(player_1 = 'Player 1')
    @game = Game.new(player_1)
  end

  def self.current_game
    @game
  end

private

  def wins
    get_totals(:win)
  end

  def losses
    get_totals(:lose)
  end

  def draws
    get_totals(:draw)
  end

  def get_totals(result)
    @log.count { |i| i[0] == result }
  end

end
