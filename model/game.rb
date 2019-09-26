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
    return "#{@player_1.name}'s move: #{@player_1.attack}\nCPU's move: #{@player_2.move}\nIt's a Draw".gsub(/\n/, '<br/>') if player_1 == computer_move
    return "#{@player_1.name}'s move: #{@player_1.attack}\nCPU's move: #{@player_2.move}\nYou won".gsub(/\n/, '<br/>') if BEATMAP[player_1] == computer_move
    "#{@player_1.name}'s move: #{@player_1.attack}\nCPU's move: #{@player_2.move}\nCPU won".gsub(/\n/, '<br/>')
  end

end
