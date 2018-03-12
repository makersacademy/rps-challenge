require_relative './hand_shape.rb'

module GameMod

  SHAPES_ARY =
    [
      HandShape.new('Rock', ['Scissors']),
      HandShape.new('Paper', ['Rock']),
      HandShape.new('Scissors', ['Paper'])
    ]

end
