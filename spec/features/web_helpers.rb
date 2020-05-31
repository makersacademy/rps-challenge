def sign_in_and_play
  visit '/'
  fill_in 'single_player_name', with: 'Steve'
  click_button 'Submit'
end

def sign_in_and_pick_rock
  sign_in_and_play
  click_button 'Rock'
end
