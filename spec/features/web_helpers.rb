def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Alpha'
  click_button 'Submit'
end

def sign_in_and_player1_selects
  visit('/')
  fill_in :player_1_name, with: 'Alpha'
  click_button 'Submit'
  click_on 'rock'
end
