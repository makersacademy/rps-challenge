require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :options

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result(option_1, option_2)
    return "tie" if option_1 == option_2
    case option_1
      when "paper"
        option_2 == "rock" ? player_1 : player_2
      when "rock"
        option_2 == "scissors" ? player_1 : player_2
      when "scissors"
        option_2 == "paper" ? player_1 : player_2
    end
  end

  def computer_option
    player_2.random_option
  end
end
