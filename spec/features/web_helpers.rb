def sign_in_single_player
  visit ('/')
  click_button 'Single Player'
  fill_in :player_name, with: "Name"
  click_button 'Submit'
end

def sign_in_multi_player
  visit ('/')
  click_button 'Multi-Player'
  fill_in :player_name, with: "P1"
  fill_in :player_2, with: "P2"
  click_button 'Submit'
end
