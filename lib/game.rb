require_relative 'bot'
require_relative 'player'

class Game

  attr_reader :player, :bot, :game

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

  def player_wins?(player_move, bot_move)
    [['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock']].include?([player_move, bot_move])
  end
end