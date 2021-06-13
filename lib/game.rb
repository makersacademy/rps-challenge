require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def round(p1_action, p2_action)
    if p1_action == p2_action
      "It's a draw"
    elsif p1_action == 'rock' && p2_action == 'scissors'
      "#{player_1.name} wins"     
    elsif p1_action == 'paper' && p2_action == 'rock'
      "#{player_1.name} wins"
    elsif p1_action == 'scissors' && p2_action == 'paper'
      "#{player_1.name} wins"
    elsif p2_action == 'rock' && p1_action == 'scissors'
      "#{player_2.name} wins"     
    elsif p2_action == 'paper' && p1_action == 'rock'
      "#{player_2.name} wins"
    elsif p2_action == 'scissors' && p1_action == 'paper'
      "#{player_2.name} wins"
    else
      "Something went wrong"
    end
  end

end
