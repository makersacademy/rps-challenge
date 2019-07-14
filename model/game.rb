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
    return "It's a Draw" if player_1 == player_2
    return "Player 1 won" if BEATMAP[player_1] == player_2
    "Player 2 won"
  end
  # 
  # def self
  #   @game = Game.new(player_1, player_2)
  # end
end
