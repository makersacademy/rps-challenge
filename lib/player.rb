class Player

  def initialize(name)
    @name = name
    @points = 0
    @last_move = nil
  end

  def show_name
    name
  end

  def show_points
    points
  end

  def show_last_move
    last_move
  end

  def store_move(move)
    @last_move = move
  end

  private

  attr_reader :name, :points, :last_move

end
