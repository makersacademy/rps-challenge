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
    return "#{@player_1.name}: #{@player_1} & #{@player_2.name}: #{@player_2.move}. It's a Draw" if player_1 == computer_move
    return "#{@player_1.name}: #{@player_1} & #{@player_2.name}: #{@player_2.move}. #{@player_1.name} won" if BEATMAP[player_1] == computer_move
    "#{@player_1.name}: #{@player_1} & #{@player_2.name}: #{@player_2.move}. #{@player_2.name} won"
  end
  #
  # def self
  #   @game = Game.new(player_1, player_2)
  # end
end
