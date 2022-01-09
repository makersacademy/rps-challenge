class Gameplay 
  attr_reader :player_name, :player_choice, :opponent_choice
  
  def initialize(session_hash)
    @player_name = session_hash[:player_name]
    @player_choice = session_hash[:player_choice]
    @opponent_choice = session_hash[:opponent_choice]
  end

  def win
  end
end