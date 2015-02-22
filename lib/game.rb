class Game

  attr_accessor :player_one, :player_two 

  # def initialize
  #   @players ||= []
  # end

  def add_player(player)
    @player_one ? @player_two = player : @player_one = player
    players << player
  end

  def players
    @players ||= []
  end
end