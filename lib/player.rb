class Player

  attr_accessor :name, :image, :move

  def initialize(player)
    @name = player[:name]
    @image = player[:img]
  end

  def chosen_move(move)
    @move = move
  end
end
