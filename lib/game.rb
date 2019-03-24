require_relative './player'

class Game

  COMPUTER_NAME = "RPSBot::9000"

  def self.create(name1, name2 = nil, player = Player)
    if name2.nil?
      @game = new(name1, COMPUTER_NAME, player)
      @game.players[1].set_computer
    else
      @game = new(name1, name2, player)
    end
    @game
  end

  def self.instance
    @game
  end

  attr_reader :turn, :players

  def initialize(name1, name2, player = Player)
    @players = [player.new(name1), player.new(name2)]
    @turn = 0
  end

  def next_turn
    @turn += 1
  end

  def result
    score = (players[0].choice - players[1].choice) % 3
    [
      "It's a draw",
      "#{players[0].name} wins",
      "#{players[1].name} wins"
    ][score]
  end

  def current_player
    players[turn % 2]
  end

  def other_player
    players[(turn + 1) % 2]
  end

  def warning
    return "" if players[1].computer?
    "#{other_player.name}, look away"
  end

end
