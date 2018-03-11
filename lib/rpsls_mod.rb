require_relative './hand_shape.rb'

module GameMod

  SHAPES_ARY =
    [
      HandShape.new('Rock', ['Paper', 'Spock']),
      HandShape.new('Paper', ['Scissors', 'Lizard']),
      HandShape.new('Scissors', ['Rock', 'Spock']),
      HandShape.new('Lizard', ['Rock', 'Scissors']),
      HandShape.new('Spock', ['Paper', 'Lizard']),
    ]

end
