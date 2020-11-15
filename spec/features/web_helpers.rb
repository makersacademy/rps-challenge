def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Alex'
  click_button 'Submit'
end

def multi_sign_in
  visit('/')
  fill_in :player_1_name, with: 'Alex'
  fill_in :player_2_name, with: 'Verity'
  click_button 'Submit'
end
