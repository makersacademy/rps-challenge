require_relative './hand_shape.rb'

module GameMod

  SHAPES_ARY =
    [
      HandShape.new('Rock', ['Scissors'], ['crushes']),
      HandShape.new('Paper', ['Rock'], ['covers']),
      HandShape.new('Scissors', ['Paper'], ['cuts'])
    ]

end
