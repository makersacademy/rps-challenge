class Game

  def initialize
    @shapes = ['Rock', 'Paper', 'Scissors']
  end

  def run(shape_1, shape_2)
    if @shapes[@shapes.find_index(shape_1) - 1] == shape_2
      shape_1
    elsif @shapes[@shapes.find_index(shape_1) - 2] == shape_2
      shape_2
    else
      "equal shape"
    end
  end
  
end
