class Player

  attr_reader :name, :selected

  def initialize name
    @name = name
  end

  def chooses rock_paper_scissor
    @selected = rock_paper_scissor
  end
end
