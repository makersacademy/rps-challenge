class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def player_one_show_name
    player_one.show_name
  end

  def player_two_show_name
    player_two.show_name
  end

  private

  attr_reader :player_one, :player_two
  
end
