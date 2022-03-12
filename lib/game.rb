class Game

  def initialize(player)
    @inputted_player = player
  end

  def player
    @inputted_player
  end

  private

  attr_reader :inputted_player

end