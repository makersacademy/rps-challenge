def sign_in_and_play_2_player
  visit('/')
  fill_in :p1_name, with: 'Ben'
  fill_in :p2_name, with: 'Bethan'
  click_button 'Submit'
end

def sign_in_and_play_1_player
  visit('/')
  fill_in :p1_name, with: 'Ben'
  click_button 'Submit'
end

