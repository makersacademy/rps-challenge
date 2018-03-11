require_relative './hand_shape.rb'

module GameMod

  SHAPES_ARY =
    [
      HandShape.new('Rock', ['Paper']),
      HandShape.new('Paper', ['Scissors']),
      HandShape.new('Scissors', ['Rock'])
    ]

end
