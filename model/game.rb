require_relative 'player'

class Game

  BEATMAP = { "Rock" => "Scissor",
              "Paper" => "Rock",
              "Scissor" => "Paper"
            }

  WEAPONS = ["Rock", "Paper", "Scissor"]

  attr_reader :player_1

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = Player.new(player_1)
    @player_2 = player_2
  end

  def outcome(player_1)
    computer_move = @player_2.move
    return "It's a Draw" if player_1 == computer_move
    return "You won" if BEATMAP[player_1] == computer_move
    "CPU won"
  end

end
