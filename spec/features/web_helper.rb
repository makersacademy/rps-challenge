def sign_in_method
  visit '/'
  fill_in 'player_1', with: 'Felix'
  click_button 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Felix'
  click_button 'Submit'
  click_button 'Start Game'
end

def sign_in_play_select_rock
  visit '/'
  fill_in 'player_1', with: 'Felix'
  click_button 'Submit'
  click_button 'Start Game'
  click_button 'ROCK'
end
