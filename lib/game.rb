class Game

  attr_reader :player_name, :player_choice

  def initialize(session)
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
  end 
end 
