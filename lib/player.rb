class Player

  attr_reader :comparator, :random_move_creator

  def initialize comparator, random_move_creator
    @comparator          = comparator
    @random_move_creator = random_move_creator
  end

#is it correct you got the result here?
  def play move = (option_chosen || random_move_creator)
    comparator.compair ShapeCreator(move), self
  end

  def win?
    comparator.veredict
  end


end


Player::ShapeCreator = -> (shape) { shape.capitalize.new }