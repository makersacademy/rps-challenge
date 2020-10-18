require './app'

class Game

  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win },
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }
  def initialize
    @opponent = Opponent.new
  end

  # case @weapon
  # when user == 'rock' && opponent == 'scissors'
  #   "#{user} wins"
  # when user == 'paper' && opponent == 'rock'
  #   "#{user} wins"
  # when user == 'scissors' && opponent == 'paper'
  #   "#{user} wins"
  # else
  #   'computer wins'
  # end



end