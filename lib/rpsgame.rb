class RPSGame 

  def initialize  
    @winning_logic = [
      { :player_1 => 'Paper', :lucy_the_computer => 'Rock' },
      { :player_1 => 'Scissors', :lucy_the_computer => 'Paper' },
      { :player_1 => 'Rock', :lucy_the_computer => 'Scissors' }
    ]
  end

  def play (player_1_selection, lucy_the_computer_selection)
    if player_1_selection == lucy_the_computer_selection
      return "Hmm. It's a tie this time"
    else
    @winning_logic.each do | option |
      return "Congratulations! You beat Lucy the Computer!!!" if player_1_selection == option[:"player_1"] && lucy_the_computer_selection == option[:"lucy_the_computer"]
    end
  "Bad luck! You were beaten this time"
  end
 end

end  