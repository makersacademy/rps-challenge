require_relative 'Player'

class Ai < Player

  attr_reader :elements_available, :rand_num

  def add_element(*element)
    @elements_available = [*element]
  end

  def rand_num_generator
    @rand_num = rand(3) + 1
  end

  def random_selection
    rand_num_generator
    if rand_num == 1
      select_element(elements_available[0])
    elsif rand_num == 2
      select_element(elements_available[1])
    else
      select_element(elements_available[2])
    end
  end
end