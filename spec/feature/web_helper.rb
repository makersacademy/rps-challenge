def sign_in_and_play_single
  visit('/')
  click_button 'One Player'
  fill_in :player_name, with: 'Eoin'
  click_button 'Submit'
end

def one_loop_of_single_player_game
  click_button 'Sissors'
  click_button 'Computers go'
  click_button 'Play_again?'
end
