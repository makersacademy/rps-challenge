class Game

  attr_reader :current_player, :player, :user_selection

  def initialize(player)
    @player = player
    @current_player = player
  end

  def player_selection(selection)
    @user_selection = selection
  end

  private
  
  attr_writer :user_selection

end
