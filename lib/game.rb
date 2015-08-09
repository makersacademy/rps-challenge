require_relative "computer.rb"

class Game

  def initialize
    @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  end

  def game_result(choice1, choice2)
    return :win if @defeat[choice1] == choice2
    return :lose if @defeat[choice2] == choice1
    return :draw if choice1 == choice2
  end
end

# before do
#   @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
#   @throws = @defeat.keys
# end

get 'throw/:type' do
  player_throw = params[:type].to_sym

  if !@throws.include?(player_throw)
    halt 403, "You must throw one of the following #{@throws}"
  end

  computer_throw = @throws.sample

  if player_throw == computer_throw
    "Aahh it seems like we have a draw!"
  elsif computer_throw == @def[player_throw]
    "Congratulations! You won!"
  else
    "Hey loser :D\nBetter luck next time :P"
  end
end
