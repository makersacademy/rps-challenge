require_relative 'npc'
class Destiny

  attr_reader :player_1_name, :npc

  def initialize(player_1_name, npc = NPC.new)
    @player_1_name = player_1_name
    @npc = npc
  end

  def duel(weapon)
    if weapon == npc.arm_thyself
      "You draw"
    elsif weapon == "Rock" && npc.arm_thyself == "Scissors"
      "#{@player_1_name} wins!"
    elsif  weapon == "Paper" && npc.arm_thyself == "Rock"
      "#{@player_1_name} wins!"
    elsif weapon == "Scissors" && npc.arm_thyself == "Paper"
      "#{@player_1_name} wins!"
    else
      "You were defeated... by a bunch of '0s' and '1s'!"
    end
  end
end
