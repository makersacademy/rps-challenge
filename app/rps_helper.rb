require_relative 'sign_game'
require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

module RPSSetterUpper
  def new_game
    SignGame.new rock: Rock.new, paper: Paper.new, scissors: Scissors.new
  end
end
