require_relative 'bot'
require_relative 'player'

class Game

  attr_reader :player, :bot

  def initialize(name)
    @player = Player.new(name)
    @bot = Bot.new
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end
end