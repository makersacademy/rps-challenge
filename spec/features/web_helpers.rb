def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: "Jess"
  fill_in :player_2_name, with: "James"
  click_button 'Submit'
end

def sign_in_start_game
  visit ('/')
  fill_in :player_1_name, with: "Jess"
  fill_in :player_2_name, with: "James"
  click_button 'Submit'
  click_button 'Start game'
end 
