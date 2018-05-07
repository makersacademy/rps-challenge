class Game
  attr_accessor :player_1, :player_2

  @@instance = Game.new

  def self.instance
    @@instance
  end

  def result
    win_array = {rock: :scissors, paper: :rock, scissors: :paper}
    return "#{player_1.name} wins!" if win_array[player_1.move] == player_2.move
    return "It's a draw!" if player_1.move == player_2.move
    "#{player_2.name} wins!" if win_array[player_2.move] == player_1.move
  end

  private_class_method :new
end
