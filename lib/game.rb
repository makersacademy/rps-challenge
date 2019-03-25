require_relative 'player'
require_relative 'bot'
require_relative 'result'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = nil, bot_class = Bot)
    @player_1 = player_1
    @player_2 = player_2
    @player_2 = bot_class.new if @player_2.nil?
  end

  def self.create(player_1, player_2 = nil, bot_class = Bot)
    @game = Game.new(player_1, player_2, bot_class)
  end

  def self.instance
    @game
  end

  def result(result_class = Result)
    result_class.run(player_1.weapon, player_2.weapon)
  end

end
