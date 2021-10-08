class Game 
  attr_reader :player, :cpu

  def initialize(player = Player.new, cpu = Computer.new)
    @player = player
    @cpu = cpu
  end 

  def player_turn(player, turn)
    player.set_move(turn)
  end
end