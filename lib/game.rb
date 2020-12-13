require_relative 'game'

class Game
  attr_reader :players

  def initialize(players:)
    @players = players
  end

  def winner
    case players[0].choice
    when "rock"
      case players[1].choice
      when "rock"
        nil
      when "paper"
        players[1]
      when "scissors"
        players[0]
      end
    when "paper"
      case players[1].choice
      when "rock"
        players[0]
      when "paper"
        nil
      when "scissors"
        players[1]
      end
    when "scissors"
      case players[1].choice
      when "rock"
        players[1]
      when "paper"
        players[0]
      when "scissors"
        nil
      end
    end
  end

  def draw?
    winner.nil?
  end
end
