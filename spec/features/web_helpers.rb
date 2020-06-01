def sign_in_and_play
  visit '/'
  click_button 'Single Player'
  fill_in 'single_player_name', with: 'Steve'
  click_button 'Submit'
end

def sign_in_and_pick_rock
  sign_in_and_play
  click_button 'Rock'
end

def sign_in_and_play_multi
  visit '/'
  click_button 'Multi'
  fill_in 'player_1_name', with: 'Steve'
  fill_in 'player_2_name', with: 'Alan'
  click_button 'Submit'
end

def sign_in_and_play_moves
  sign_in_and_play_multi
  click_button 'Rock'
  click_button 'Paper'
end
