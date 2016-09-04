class Player

  def initialize(name)
    @name = name
    @points = 0
  end

  def show_name
    name
  end

  def show_points
    points
  end

  private

  attr_reader :name, :points

end
