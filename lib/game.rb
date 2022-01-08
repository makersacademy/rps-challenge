class Game
  attr_reader :player_1_name, :user_choice, :comp_choice

  def initialize(session)
    @player_1_name = session["player_1_name"]
    @user_choice = session["user_choice"]
    @comp_choice = session["comp_choice"]
  end

  def comp_move
    %w[Rock Paper Scissors].sample
  end
  
end


