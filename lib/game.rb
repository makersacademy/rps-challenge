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
    return "#{get_totals(:win)} wins, #{get_totals(:lose)} losses, and #{get_totals(:draw)} draws"
  end

  def self.new_game(player_1 = 'Player 1')
    @game = Game.new(player_1)
  end

  def self.current_game
    @game
  end

private

  def get_totals(result)
    @log.count { |i| i[0] == result }
  end

end
