class Player

  attr_accessor :name, :image, :move
  # initializes with an instance of the player hash, containing name and image.
  def initialize(player)
    @name = player[:name]
    @image = player[:img]
    @move = player[:move]
  end

  def chosen_move(move)
    @move = move
  end
end
