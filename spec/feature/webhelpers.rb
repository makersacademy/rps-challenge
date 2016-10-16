def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Player 1"
  # fill_in :player_2_name, with: "Player 2"
  click_button 'Submit'
end

def get_result
  click_button 'Rock'
end
