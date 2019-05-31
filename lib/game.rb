require './lib/player.rb'
class Game
  attr_accessor :move
  def add_player(player)
    @player = player
  end

  def playername
    @player.username
  end

  def ai_move
    %w[rock paper scissors].sample
  end
end
