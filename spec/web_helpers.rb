def sign_in_and_play
    visit "/"
    fill_in "player_1_name", with: 'Player 1' 
    click_button 'Start Game'     
end
  
