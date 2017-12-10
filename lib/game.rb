require_relative 'player'
require_relative 'choice'

class Game

  attr_reader :the_player, :computer

  def initialize(player_name)
    @the_player = Player.new(player_name)
    @computer = Player.new("Bot")
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def play_computer(bot_item = nil)
    @computer.random_item
    bot_item ||= @computer.choice.item
    player_number = name_to_number(@the_player.choice.item)
    bot_number = name_to_number(bot_item)
    bot_number == player_number ? ( draw ) : (((bot_number - player_number) % 5) < 3 ? (bot_wins) : (player_wins))
  end

private

  def name_to_number(name)
    case name
      when :rock
        return 0
      when :spock
        return 1
      when :paper
        return 2
      when :lizard
        return 3
      when :scissors
        return 4
    end
  end

  def draw
    "Draw"
  end

  def bot_wins
    "Lose"
  end

  def player_wins
    "win"
  end
end
