class Game

  attr_reader :end_game_message

  def end_game_message
    return "it's a tie" if @weapon == @ai_weapon

    winning_combos = [["Paper","Rock"],["Rock","Scissor"],["Scissors","Paper"]]
    if winning_combos.include?([@weapon, @ai_weapon])
    "You Win"
    else
    "You Lose"
    end
  end

end
