require_relative 'player'

class Game

  BEATMAP = { "Rock" => "Scissor",
              "Paper" => "Rock",
              "Scissor" => "Paper"
            }

  WEAPONS = ["Rock", "Paper", "Scissor"]

  attr_reader :player_1

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def outcome(player_1, player_2)
    if player_1 == player_2
      "It's a Draw"
    elsif BEATMAP[player_1] == player_2
      "Player 1 won"
    else
      "Player 2 won"
    end
  end

  # def self
  #   @game = Game.new(player_1, player_2)
  # end
end
