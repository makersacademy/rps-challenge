def start_game
  visit ('/')
  fill_in :player_name, with: 'Gwen'
  click_button 'Start Game'
end

def computer_options
  ['Rock', 'Paper', 'Scissors'].map do 
    |option| 'Computer chose ' + option
end

end 