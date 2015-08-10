require_relative 'roshambo'

class Game
  include Roshambo

  attr_accessor :player_1, :player_2

  # def player_move option
  #   send (option.to_sym) ? player_1.move = option : false rescue 'scissors, paper or rock - Choose your move wisely!'
  # end
end
