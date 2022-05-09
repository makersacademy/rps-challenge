class Computer 
  attr_reader :move, :name

  def initialize
    @name = "Computer"
  end

  def play
    @move = calculate_move
  end

  private

  def calculate_move
    [:rock, :paper, :scissors].sample
  end
end