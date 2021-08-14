require './lib/player.rb'
class Game

  attr_reader :player_1, :player_2

  def initialize(player_1_class:, player_2_class:)
    @player_1 = player_1_class
    @player_2 = player_2_class
  end

  def show_hand
    puts "#{@player_1.r_p_s} #{@player_2.r_p_s}"
  end

end
