class Game
  attr_reader :player_move

  def initialize(name)
    @name = name
    @player_move = ""
  end

  def player_name
    @name
  end

  def move(choice)
    @player_move = choice
  end
end