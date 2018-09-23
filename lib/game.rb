require_relative 'npc'
class Destiny

  attr_reader :player_1_name, :npc

  def initialize(player_1_name, npc = NPC.new)
    @player_1_name = player_1_name
    @npc = npc
  end

  def duel(player_1_name)
    if player_1_name == npc.arm_thyself
      "You draw"
    elsif player_1_name == "Rock" && npc.arm_thyself == "Scissors"
      "player_1_name wins!"
    elsif player_1_name == "Paper" && npc.arm_thyself == "Rock"
      "player_1_name wins!"
    elsif player_1_name == "Scissors" && npc.arm_thyself == "Paper"
      "player_1_name wins!"
    else
      "You were defeated... by a bunch of '0s' and '1s'!"
    end
  end
end
