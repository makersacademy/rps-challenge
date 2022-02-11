class Game

  attr_reader :id, :player_one, :player_two

  def initialize(player_one, player_two, id = object_id)
    @id = id
    @player_one = player_one
    @player_two = player_two
  end

  def play_game
    :win
  end

end
