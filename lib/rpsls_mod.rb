require_relative './hand_shape.rb'

module GameMod

  SHAPES_ARY =
    [
      HandShape.new('Rock', ['Scissors', 'Lizard'], ['crushes', 'crushes']),
      HandShape.new('Paper', ['Rock', 'Spock'], ['covers', 'disproves']),
      HandShape.new('Scissors', ['Paper', 'Lizard'], ['cuts', 'decapitates']),
      HandShape.new('Lizard', ['Paper', 'Spock'], ['eats', 'poisons']),
      HandShape.new('Spock', ['Scissors', 'Rock'], ['smashes', 'vaporizes']),
    ]

end
